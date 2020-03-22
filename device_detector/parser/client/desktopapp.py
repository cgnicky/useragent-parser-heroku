from . import BaseClientParser


class DesktopApp(BaseClientParser):

    appdetails_files = [
        'appdetails/osutility.yml',
        'appdetails/antivirus.yml',
        'appdetails/desktop_apps.yml',
    ]

    fixture_files = [
        'local/client/osutility.yml',
        'local/client/antivirus.yml',
        'local/client/desktop_apps.yml',
    ]

    def dtype(self):
        return self.calculated_dtype or self.ua_data.get('type', '') or 'desktop app'


__all__ = [
    'DesktopApp',
]
