"""catalog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path
from django.conf import settings
from django.conf.urls import url, include
from django.conf.urls.static import static
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('', views.item_list, name='index'),
    path('user/<int:user_id>', views.user_page, name='user_page'),
    url(r'^user/user_settings', views.user_settings, name='user_settings'),
    url(r'^user/items', views.items, name='items'),
    url(r'^user/delete_user', views.delete_user, name='delete_user'),
    path('user/delete_item/<int:item_id>', views.delete_item, name='delete_item'),
    path('user/edit_item/<int:item_id>', views.edit_item, name='edit_item'),
    path('user/edit_item/<int:item_id>/delete/images/<str:image_name>', views.edit_item, name='edit_item'),
    path('item/<int:item_id>', views.item_detail, name='item_detail'),
    path('add_item/', views.add_item, name='add_item'),
    url(r'^observe/$', views.observe, name='observe'),
    url(r'^user/observed', views.observed, name='observed'),
    url(r'^stopobserving/$', views.stopobserving, name='stopobserving'),
    url(r'^login/$', views.login_page, name='login'),
    url(r'^logout/$', auth_views.LogoutView.as_view(), name='logout'),
    url(r'^oauth/', include('social_django.urls', namespace='social')),
    url(r"^messages/", include("pinax.messages.urls", namespace="pinax_messages")),
    url(r"^messages/inbox/", views.InboxView.as_view(), name="inbox"),
    path('summernote/', include('django_summernote.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)