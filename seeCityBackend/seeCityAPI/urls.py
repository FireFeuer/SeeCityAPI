from django.urls import path
from .views import ProposalListView
from .views import RegistrationView
from .views import ProposalCreateView
from .views import CommentCreateView
from .views import CommentsListAPIView
from .views import ProposalUpdateAPIView
from .views import ProposalRetrieveView
from .views import ProposalDeleteView
from .views import IsStaffRetrievalView
from .views import EvaluationProposalView
from .views import EvaluationRetrievalView
from .views import ProposalLikeCountAPIView
from .views import ProposalDislikeCountAPIView
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)



urlpatterns = [
    path('proposal/get/', ProposalListView.as_view(), name='proposal-list'),
    path('proposal/<int:pk>/', ProposalRetrieveView.as_view()),
    path('proposal/create/', ProposalCreateView.as_view(), name='proposal-create'),
    path('proposal/delete/<int:pk>/', ProposalDeleteView.as_view(), name='proposal-list'),
    path('proposal/put/<int:pk>/', ProposalUpdateAPIView.as_view(), name='proposal-list'),

    path('comment/create/', CommentCreateView.as_view(), name='comment-create'),
    path('comment/<int:id_proposal>/', CommentsListAPIView.as_view(), name='comment-list'),

    path('evaluate-proposal/', EvaluationProposalView.as_view(), name='evaluate-proposal'),
    path('evaluate-proposal/<int:id_proposal>/<str:login>/', EvaluationRetrievalView.as_view(), name='proposal-evaluate'),\
    path('proposal-count-like/<int:id_proposal>/', ProposalLikeCountAPIView.as_view(), name='proposal-evaluate'),
    path('proposal-count-dislike/<int:id_proposal>/', ProposalDislikeCountAPIView.as_view(), name='proposal-evaluate'),
    
    
    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('register/', RegistrationView.as_view(), name='register'),
    path('role/<str:username>/', IsStaffRetrievalView.as_view(), name='role'),
]
