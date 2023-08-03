from django.views.generic import TemplateView
from datetime import datetime

class HomeView(TemplateView):
    template_name = 'home/welcome.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['current_page'] = 'home'
        context['today'] = datetime.today()
        return context