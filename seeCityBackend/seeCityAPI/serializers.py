from rest_framework import serializers
from .models import Proposal
from .models import Comment
from .models import EvaluationProposal
from django.contrib.auth import get_user_model


User = get_user_model()


class ProposalSerializer(serializers.ModelSerializer):
    class Meta:
        model = Proposal
        # fields = ['login', 'name', 'description', 'coordinates', 'relevance', 'date_creation']
        fields = ['id', 'name', 'description', 'coordinates', 'login', 'relevance', 'date_creation', 'is_delete']

class ProposalUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Proposal
        # fields = ['login', 'name', 'description', 'coordinates', 'relevance', 'date_creation']
        fields = ['relevance']

class ProposalDeleteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Proposal
        # fields = ['login', 'name', 'description', 'coordinates', 'relevance', 'date_creation']
        fields = ['is_delete']

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User

        fields = ['id', 'username', 'email', 'password']

class IsStaffSerializer(serializers.ModelSerializer):
    class Meta:
        model = User

        fields = ['id', 'username', 'is_staff']

class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment

        fields = ['id', 'login', 'id_proposal', 'text']

class EvaluationProposalSerializer(serializers.ModelSerializer):
    class Meta:
        model = EvaluationProposal

        fields = ['id', 'evaluation', 'login', 'id_proposal']
