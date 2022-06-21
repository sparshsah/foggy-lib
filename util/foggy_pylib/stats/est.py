"""Statistical estimation.

v1.0 beta: API probably won't dramatically change, but
    implementations have not yet been thoroughly tested.

author: [@sparshsah](https://github.com/sparshsah)


# Notes
* Currently, each estimator adheres to a frequentist paradigm,
    using the realized (observed) sample stat directly as its point estimate of the parameter.
    But in the future, we could implement a more Bayesian approach,
    using the data to instead inform our posterior distribution for the parameter.
"""

from typing import Union, Optional
import pandas as pd

FloatSeries = pd.Series
FloatDF = pd.DataFrame
FloatSeriesOrDF = Union[FloatSeries, FloatDF]
Floatlike = Union[float, FloatSeriesOrDF]

DEFAULT_AVG_KIND: str = "mean"
DEFAULT_DE_AVG_KIND: Optional[str] = DEFAULT_AVG_KIND
