#!/usr/bin/env python3

import unittest
import app

class TestApp(unittest.TestCase):

    def test_app_print_func(self):
        self.assertTrue(app.print_func("Test print func"))

if __name__ == '__main__':
    unittest.main()
