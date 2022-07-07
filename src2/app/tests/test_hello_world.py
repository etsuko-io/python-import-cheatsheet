import unittest

from app.domain.bye import Bye
from app.hello import HelloWorld


class TestConversation(unittest.TestCase):
    def test_greet(self):
        assert HelloWorld.greet() == "Hello World"

    def test_bye(self):
        assert Bye.leave() == "Bye, world!"
