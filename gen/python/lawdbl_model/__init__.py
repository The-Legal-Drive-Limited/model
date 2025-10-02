"""
LawDBL Model - Python data models for legal database operations.

This package provides Pydantic models for lawyers, queries, and legal fields
used in the LawDBL (Legal Database) system.
"""

from .model import (
    Lawyer,
    Query,
    Index,
    FieldOfLaw,
    City,
)

__version__ = "0.0.1"
__all__ = [
    "Lawyer",
    "Query", 
    "Index",
    "FieldOfLaw",
    "City",
]
