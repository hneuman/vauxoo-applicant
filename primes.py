"""
Your module documentation here
"""


class PrimeClass(object):
    """Your class documentation here"""

    def is_prime(self, num_int):
        """
        Your method documentation here
        """

        for contador in range(2, num_int-1):
            if (num_int%contador == 0):
            	print '%s %s'%(num_int,contador)
                return False

        print '%s '%(num_int)        
        return True  # Remove this dummy line
