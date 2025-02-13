from django.views.generic import TemplateView

class HomeView(TemplateView):
    template_name = 'home.html'  # Template file ka path

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['name'] = 'Ranjeet Gupta kumar'  # Dynamic data template mein bhejna
        return context


