from .models import Proposal
from .models import EvaluationProposal
from .models import EvaluationComment
from .models import EmailVerificationCode
from .serializers import ProposalSerializer
from .serializers import EvaluationProposalSerializer
from .serializers import EvaluationCommentSerializer
from .serializers import ProposalUpdateSerializer
from .serializers import ProposalDeleteSerializer
from .serializers import UserSerializer
from .serializers import IsStaffSerializer
from .serializers import CommentSerializer
from .serializers import ChangePasswordSerializer
from .serializers import ComplaintsSerializer
from .serializers import NotificationSerializer
from .serializers import EmailVerificationCodeSerializer
from .serializers import UserBlockSerializer
from .serializers import CommentDeleteSerializer
from rest_framework import viewsets
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.permissions import AllowAny
from rest_framework.generics import RetrieveAPIView
from rest_framework import generics, permissions
from .models import Comment
from .models import Notification
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
from django.core.mail import send_mail
import random


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
    
class CommentDeleteView(generics.UpdateAPIView):
    queryset = Comment.objects.all()
    # permission_classes = (IsAuthenticated,)
    serializer_class = CommentDeleteSerializer

    def update(self, request, *args, **kwargs):
        comment = self.get_object()
        data = request.data
        availability = data['availability']
        comment.availability = availability

        comment.save()

        return Response({"availability": comment.availability})
        
class CommentCreateView(APIView):
    serializer_class = CommentSerializer
    # permission_classes = (IsAuthenticated,)

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
    

class ProposalNameCoordinatesViewSet(APIView):
    serializer_class = ProposalSerializer
    # permission_classes = (IsAuthenticated,)

    def get(self, request, name):
        if name is not None:
            proposals = Proposal.objects.filter(name__iexact=name)
        else:
            proposals = Proposal.objects.none()

        serializer = ProposalSerializer(proposals, many=True)
        return Response({'proposal': serializer.data})


class ProposalListView(APIView):
    serializer_class = ProposalSerializer
    # permission_classes = (IsAuthenticated,)

    def get(self, request, format=None):
        companies = Proposal.objects.all().select_related()
        serializer = ProposalSerializer(companies, many=True)
        return Response({'proposal': serializer.data})
    
class ProposalLoginListView(APIView):
    serializer_class = ProposalSerializer
    # permission_classes = (IsAuthenticated,)

    def get(self, request, login):
        if login is not None:
            proposals = Proposal.objects.filter(login__iexact=login)
        else:
            proposals = Proposal.objects.none()

        serializer = ProposalSerializer(proposals, many=True)
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
        
class ChangePasswordView(APIView):
    serializer_class = ChangePasswordSerializer
    permission_classes = (AllowAny,)

    def post(self, request):
        data = request.data
        email = data['email']
        new_password = data['new_password']

        try:
            user = User.objects.get(email=email)
        except User.DoesNotExist:
            return Response({'error': 'User with this email does not exist.'}, status=400)

        # Обновляем пароль пользователя
        user.set_password(new_password)
        user.save()

        return Response({'message': 'Password changed successfully.'}, status=200)
    
class IsActiveUpdateView(APIView):
    permission_classes = [permissions.AllowAny]
    serializer_class = UserBlockSerializer
    def put(self, request):
        data = request.data 
        username = data['username']
        user = User.objects.filter(username__iexact=username)
        if user.exists():
            user.update(is_active=False)
            return Response({'message': 'User is now inactive.'}, status=200)
        else:
            return Response({'error': 'User does not exist.'}, status=404)
        
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
    

class EvaluationCommentView(APIView):
    serializer_class = EvaluationCommentSerializer
    def post(self, request):
        serializer = EvaluationCommentSerializer(data=request.data)
        
        if serializer.is_valid():
            login = serializer.validated_data.get('login')
            id_comment = serializer.validated_data.get('id_comment')
            evaluation = serializer.validated_data.get('evaluation')
            
            # Проверяем, существует ли уже запись с таким login и id_comment
            existing_evaluation = EvaluationComment.objects.filter(login=login, id_comment=id_comment).first()
            if existing_evaluation:
                existing_evaluation.evaluation = evaluation
                existing_evaluation.save()
                return Response({'message': 'Оценка успешно обновлена'}, status=200)
            else:
                serializer.save()
                return Response(serializer.data, status=201)
        return Response(serializer.errors, status=400)
    


class EvaluationRetrievalCommentView(generics.GenericAPIView):
    permission_classes = [permissions.AllowAny]
    serializer_class = EvaluationCommentSerializer

    def get(self, request, id_comment, login):
        try:
            comment = EvaluationComment.objects.get(id_comment=id_comment, login=login)
        except EvaluationComment.DoesNotExist:
            return Response([]) 

        serializer = self.serializer_class(comment)
        return Response(serializer.data)  
        


class CommentLikeCountAPIView(APIView):

    def get(self, request, id_comment):
        count = EvaluationComment.objects.filter(id_comment=id_comment, evaluation=2).count()
        return Response({'count': count})
    
class CommentDislikeCountAPIView(APIView):

    def get(self, request, id_comment):
        count = EvaluationComment.objects.filter(id_comment=id_comment, evaluation=1).count()
        return Response({'count': count})
    

class EmailVerificationViewSet(APIView):
    serializer_class = EmailVerificationCodeSerializer
    
    def post(self, request):
        email = request.data.get('email')
        
        if email:
            code = str(random.randint(10000, 99999))
            
            send_mail(
                'Verification Code',
                f'Your verification code is: {code}',
                'from@example.com',
                [email],
                fail_silently=False,
            )
            
            response_data = {'message': 'Verification code sent successfully', 'code': code}
            return Response(response_data)
        else:
            return Response({'error': 'Email is required'}, status=400)
        
class NotificationCreateView(APIView):
    serializer_class = NotificationSerializer
    # permission_classes = (IsAuthenticated,)

    def post(self, request):
        serializer = NotificationSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response({'message': 'Notifiacation created successfully.'})
        else:
            return Response(serializer.errors, status=400)


class NotificationListView(APIView):
    serializer_class = NotificationSerializer
    # permission_classes = (IsAuthenticated,)

    def get(self, request, format=None):
        notifications = Notification.objects.all().select_related()
        serializer = NotificationSerializer(notifications, many=True)
        return Response({'notification': serializer.data})
