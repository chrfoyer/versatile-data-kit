# Copyright 2023-2024 Broadcom
# SPDX-License-Identifier: Apache-2.0

from io import StringIO

import pandas as pd
from vdk.api.job_input import IJobInput


def run(job_input: IJobInput):
    pd.read_csv(StringIO())
