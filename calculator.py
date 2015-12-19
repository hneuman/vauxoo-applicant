"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Your class documentation here
    """

    def sum(self, num_list):
        """
        Your method documentation here
        """
        # your sum code here
        res = 0
        for iterador in num_list:
            res = res + int(iterador)
        return res  # Remove this dummy line
