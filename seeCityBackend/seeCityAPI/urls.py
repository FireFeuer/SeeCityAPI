from django.urls import path
from .views import ProposalListView
from .views import RegistrationView
from .views import ProposalCreateView
from .views import CommentCreateView
from .views import CommentsListAPIView
from .views import ProposalUpdateAPIView
from .views import ProposalRetrieveView
from .views import ProposalDeleteView
from .views import CommentDeleteView
from .views import IsStaffRetrievalView
from .views import EvaluationProposalView
from .views import EvaluationCommentView
from .views import EvaluationRetrievalView
from .views import EvaluationRetrievalCommentView
from .views import ProposalLikeCountAPIView
from .views import CommentLikeCountAPIView
from .views import ProposalDislikeCountAPIView
from .views import CommentDislikeCountAPIView
from .views import ChangePasswordView
from .views import EmailVerificationViewSet
from .views import NotificationCreateView
from .views import NotificationListView
from .views import ProposalLoginListView
from .views import IsActiveUpdateView
from .views import ProposalNameCoordinatesViewSet
from .views import ProposalUpdateCategoryAPIView
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)


urlpatterns = [
    path('proposal/get/', ProposalListView.as_view(), name='proposal-list'),
    path('proposal/get/<str:login>/', ProposalLoginListView.as_view(), name='proposal-list-login'),
    path('proposal/<int:pk>/', ProposalRetrieveView.as_view()),
    path('proposal/create/', ProposalCreateView.as_view(), name='proposal-create'),
    path('proposal/delete/<int:pk>/', ProposalDeleteView.as_view(), name='proposal-list'),
    path('proposal/put/<int:pk>/', ProposalUpdateAPIView.as_view(), name='proposal-list'),
    path('proposal/put-category/<int:pk>/', ProposalUpdateCategoryAPIView.as_view(), name='proposal-list'),
    path('proposal/coord/<str:name>/', ProposalNameCoordinatesViewSet.as_view(), name='proposal-coordinates'),

    path('comment/create/', CommentCreateView.as_view(), name='comment-create'),
    path('comment/<int:id_proposal>/', CommentsListAPIView.as_view(), name='comment-list'),
    path('comment/delete/<int:pk>/', CommentDeleteView.as_view(), name='comment-list'),

    path('evaluate-proposal/', EvaluationProposalView.as_view(), name='evaluate-proposal'),
    path('evaluate-proposal/<int:id_proposal>/<str:login>/', EvaluationRetrievalView.as_view(), name='proposal-evaluate'),
    path('proposal-count-like/<int:id_proposal>/', ProposalLikeCountAPIView.as_view(), name='proposal-evaluate'),
    path('proposal-count-dislike/<int:id_proposal>/', ProposalDislikeCountAPIView.as_view(), name='proposal-evaluate'),

    path('evaluate-comment/', EvaluationCommentView.as_view(), name='evaluate-procommentposal'),
    path('evaluate-comment/<int:id_comment>/<str:login>/', EvaluationRetrievalCommentView.as_view(), name='comment-evaluate'),
    path('comment-count-like/<int:id_comment>/', CommentLikeCountAPIView.as_view(), name='comment-evaluate'),
    path('comment-count-dislike/<int:id_comment>/', CommentDislikeCountAPIView.as_view(), name='comment-evaluate'),
    
    
    path('block/', IsActiveUpdateView.as_view(), name='block'),
    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('register/', RegistrationView.as_view(), name='register'),
    path('change-password/', ChangePasswordView.as_view(), name='change'),
    path('role/<str:username>/', IsStaffRetrievalView.as_view(), name='role'),

    path('code/', EmailVerificationViewSet.as_view(), name='code'),

    path('notification/create/', NotificationCreateView.as_view(), name='notification'),
    path('notification/get/', NotificationListView.as_view(), name='notification'),
]
