"""
Your module documentation here
"""


class PrimeClass(object):
    """Your class documentation here"""

    def is_prime(self, num_int):
        """
        Your method documentation here
        """
        con = 0
        for contador in range(1, num_int+1):
            if (num_int % contador) == 0:
                con = con + 1
        if con == 2:
            return True
        return False
