from .models import Proposal
from .models import EvaluationProposal
from .serializers import ProposalSerializer
from .serializers import EvaluationProposalSerializer
from .serializers import ProposalUpdateSerializer
from .serializers import ProposalDeleteSerializer
from .serializers import UserSerializer
from .serializers import IsStaffSerializer
from .serializers import CommentSerializer
from rest_framework import viewsets
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.permissions import AllowAny
from rest_framework.generics import RetrieveAPIView
from rest_framework import generics, permissions
from .models import Comment
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)


from django.contrib.auth import get_user_model
from django.contrib.auth.hashers import make_password
from django.core.exceptions import ValidationError

User = get_user_model()

class ProposalCreateView(APIView):
    serializer_class = ProposalSerializer
    permission_classes = (IsAuthenticated,)

    def post(self, request):
        serializer = ProposalSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response({'message': 'Proposal created successfully.'})
        else:
            return Response(serializer.errors, status=400)
        
class ProposalDeleteView(generics.UpdateAPIView):

    queryset = Proposal.objects.all()
    # permission_classes = (IsAuthenticated,)
    serializer_class = ProposalDeleteSerializer

    def update(self, request, *args, **kwargs):
        proposal = self.get_object()
        data = request.data
        is_delete = data['is_delete']
        proposal.is_delete = is_delete

        proposal.save()

        return Response({"is_delete": proposal.is_delete})
        
class CommentCreateView(APIView):
    serializer_class = CommentSerializer
    permission_classes = (IsAuthenticated,)

    def post(self, request):
        serializer = CommentSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response({'message': 'Comment created successfully.'})
        else:
            return Response(serializer.errors, status=400)
        
class CommentsListAPIView(APIView):
    serializer_class = CommentSerializer

    def get(self, request, id_proposal):
        comments = Comment.objects.filter(id_proposal=id_proposal)
        serialized_comments = CommentSerializer(comments, many=True)
        return Response({'comments': serialized_comments.data})



class ProposalListView(APIView):
    serializer_class = ProposalSerializer
    # permission_classes = (IsAuthenticated,)

    def get(self, request, format=None):
        companies = Proposal.objects.all().select_related()
        serializer = ProposalSerializer(companies, many=True)
        return Response({'proposal': serializer.data})
    

class ProposalRetrieveView(RetrieveAPIView):
    serializer_class = ProposalSerializer

    def get_object(self):
        pk = self.kwargs.get('pk')
        try:
            proposal = Proposal.objects.get(pk=pk)
        except Proposal.DoesNotExist:
            return Response({'error': 'Proposal not found'}, status=404)
        return proposal

    
class ProposalUpdateAPIView(generics.UpdateAPIView):
 
    queryset = Proposal.objects.all()
    # permission_classes = (IsAuthenticated,)
    serializer_class = ProposalUpdateSerializer
    permission_classes = (AllowAny,)

    def update(self, request, *args, **kwargs):
        proposal = self.get_object()
        data = request.data
        relevance = data['relevance']
        proposal.relevance = relevance

        proposal.save()

        return Response({"relevance": proposal.relevance})
    

class RegistrationView(APIView):
    serializer_class = UserSerializer
    permission_classes = (AllowAny,)

    def post(self, request):
        data = request.data 
        username = data['username']
        email = data['email']
        password = data['password']
        is_superuser = True
        is_active = True

        try:
            user = User.objects.create_user(username=username, email=email, password= make_password(password), is_superuser=is_superuser, is_active=is_active)
            user.set_password(password)
            user.save()
            return Response({'message': 'User created successfully.'})
        except ValidationError as e:
            return Response({'errors': e.messages}, status=400)
        
class IsStaffRetrievalView(generics.GenericAPIView):
    permission_classes = [permissions.AllowAny]
    serializer_class = IsStaffSerializer

    def get(self, request, username):
        try:
            user = User.objects.get(username__iexact=username)
        except User.DoesNotExist:
            return Response({'is_staff': None}, status=404)

        serializer = self.get_serializer(user)
        return Response(serializer.data)
    
class EvaluationProposalView(APIView):
    serializer_class = EvaluationProposalSerializer
    def post(self, request):
        serializer = EvaluationProposalSerializer(data=request.data)
        
        if serializer.is_valid():
            login = serializer.validated_data.get('login')
            id_proposal = serializer.validated_data.get('id_proposal')
            evaluation = serializer.validated_data.get('evaluation')
            
            # Проверяем, существует ли уже запись с таким login и id_proposal
            existing_evaluation = EvaluationProposal.objects.filter(login=login, id_proposal=id_proposal).first()
            if existing_evaluation:
                existing_evaluation.evaluation = evaluation
                existing_evaluation.save()
                return Response({'message': 'Оценка успешно обновлена'}, status=200)
            else:
                serializer.save()
                return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)
    
class EvaluationRetrievalView(generics.GenericAPIView):
    permission_classes = [permissions.AllowAny]
    serializer_class = EvaluationProposalSerializer

    def get(self, request, id_proposal, login):
        try:
            proposal = EvaluationProposal.objects.get(id_proposal=id_proposal, login=login)
        except EvaluationProposal.DoesNotExist:
            return Response([]) 

        serializer = self.serializer_class(proposal)
        return Response(serializer.data)  
        


class ProposalLikeCountAPIView(APIView):

    def get(self, request, id_proposal):
        count = EvaluationProposal.objects.filter(id_proposal=id_proposal, evaluation=2).count()

        return Response({'count': count})
    
class ProposalDislikeCountAPIView(APIView):

    def get(self, request, id_proposal):
        count = EvaluationProposal.objects.filter(id_proposal=id_proposal, evaluation=1).count()

        return Response({'count': count})
        