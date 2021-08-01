from raven import Client

from app.core.celery_app import celery_app
from app.core.config import get_settings

settings = get_settings()

client_sentry = Client(settings.SENTRY_DSN)


@celery_app.task(acks_late=True)
def test_celery(word: str) -> str:
    return f"test task return {word}"
