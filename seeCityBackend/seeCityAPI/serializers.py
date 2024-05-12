from rest_framework import serializers
from .models import Proposal
from .models import Comment
from .models import EvaluationProposal
from .models import EvaluationComment
from .models import Complaints
from .models import ChangePassword
from .models import EmailVerificationCode
from .models import Notification
from django.contrib.auth import get_user_model


User = get_user_model()


class ProposalSerializer(serializers.ModelSerializer):
    class Meta:
        model = Proposal
        fields = ['id', 'name', 'description', 'coordinates', 'login', 'relevance', 'date_creation', 'is_delete']

class ProposalUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Proposal
        fields = ['relevance']

class ProposalDeleteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Proposal
        fields = ['is_delete']

class UserBlockSerializer(serializers.ModelSerializer):
    class Meta:
        model = User

        fields = ['id', 'username',]

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User

        fields = ['id', 'username', 'email', 'password']

class IsStaffSerializer(serializers.ModelSerializer):
    class Meta:
        model = User

        fields = ['id', 'username', 'is_staff', "is_active"]

class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment

        fields = ['id', 'login', 'id_proposal', 'text', 'date', 'availability']

class CommentDeleteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = ['id', 'availability']

class EvaluationProposalSerializer(serializers.ModelSerializer):
    class Meta:
        model = EvaluationProposal

        fields = ['id', 'evaluation', 'login', 'id_proposal']

class EvaluationCommentSerializer(serializers.ModelSerializer):
    class Meta:
        model = EvaluationComment

        fields = ['id', 'evaluation', 'login', 'id_comment']

class ChangePasswordSerializer(serializers.ModelSerializer):
    class Meta:
        model = ChangePassword
        fields = ['email', 'new_password']

class ComplaintsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Complaints
        fields = ['id_proposal', 'id_comment', 'text']


class EmailVerificationCodeSerializer(serializers.ModelSerializer):
    class Meta:
        model = EmailVerificationCode
        fields = ['email']

class NotificationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Notification
        fields = ['login', 'text', 'familiarity', 'link']