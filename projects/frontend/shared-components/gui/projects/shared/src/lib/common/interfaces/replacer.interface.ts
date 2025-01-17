/*
 * Copyright 2021-2024 VMware, Inc.
 * SPDX-License-Identifier: Apache-2.0
 */

/**
 * ** Interface for generic replacer.
 */
export interface Replacer<T> {
    searchValue: T;
    replaceValue: T;
}
