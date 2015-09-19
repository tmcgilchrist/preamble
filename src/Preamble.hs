-------------------------------------------------------------------
-- |
-- Module       : Preamble
-- Copyright    : (C) 2014-2015 Dom De Re
-- License      : BSD3
-- Maintainer   : Dom De Re
--
-- The bits of the Prelude used in this project.
--
-------------------------------------------------------------------
module Preamble (
    -- * Type Classes
        Functor(..)
    ,   Foldable(..)
    ,   Traversable(..)
    ,   Alternative(..)
    ,   Applicative(..)
    ,   Bifunctor(..)
    ,   Monad(..)
    ,   MonadIO(..)
    ,   MonadPlus(..)
    ,   MonadReader(..)
    ,   MonadState(..)
    ,   MonadTrans(..)
    ,   Monoid(..)
    ,   Semigroup(..)
    ,   Show(..)
    ,   Eq(..)
    ,   Num(..)
    ,   Ord(..)
    -- * Types
    ,   Bool(..)
    ,   Char
    ,   Double
    ,   Int
    ,   Int8
    ,   Int16
    ,   Int32
    ,   Int64
    ,   Const(..)
    ,   Ordering(..)
    ,   NonEmpty(..)
    ,   String
    ,   Sum(..)
    ,   Product(..)
    ,   Word8
    ,   Word16
    ,   Word32
    ,   Word64
    -- ** Monads and Monad Transformers
    ,   Either(..)
    ,   EitherT(..)
    ,   IO
    ,   Identity(..)
    ,   Maybe(..)
    ,   MaybeT(..)
    ,   Reader
    ,   ReaderT(..)
    ,   State
    ,   StateT(..)
    -- * Operators
    ,   (.)
    ,   ($)
    ,   ($!)
    ,   (<$>)
    ,   (++)
    ,   (&&)
    ,   (||)
    -- ** Monad
    ,   (=<<)
    ,   (>=>)
    ,   (<=<)
    -- * Functions
    ,   id
    ,   const
    ,   flip
    ,   fromIntegral
    ,   on
    ,   otherwise
    ,   ord
    -- ** Foldable
    ,   sequenceA_
    ,   traverse_
    -- ** Tuple
    ,   curry
    ,   fst
    ,   snd
    ,   uncurry
    -- ** Either
    ,   either
    ,   lefts
    ,   rights
    ,   partitionEithers
    -- ** Maybe
    ,   catMaybes
    ,   fromMaybe
    ,   maybe
    -- ** Lists
    ,   drop
    ,   dropWhile
    ,   take
    ,   takeWhile
    ,   filter
    ,   notElem
    ,   partition
    ,   zip
    ,   zipWith
    -- ** NonEmpty Lists
    ,   group
    ,   groupBy
    ,   group1
    ,   groupBy1
    ,   nonEmpty
    ,   head
    ,   tail
    -- ** Monad
    ,   join
    ,   replicateM
    ,   replicateM_
    ,   runReader
    ,   runState
    ,   unless
    ,   when
    -- ** Monad Transformers
    ,   asks
    ,   gets
    -- *** EitherT
    ,   bimapEitherT
    ,   eitherT
    ,   hoistEither
    ,   left
    ,   mapEitherT
    ) where

import Prelude ( Show(..), Eq(..), Num(..), Double, Ordering(..), ($), ($!), (.), fromIntegral, otherwise )
import Control.Applicative
import Control.Monad ( Monad(..), MonadPlus(..), (=<<), (>=>), (<=<), join, replicateM, replicateM_, unless, when )
import Control.Monad.Identity ( Identity(..) )
import Control.Monad.IO.Class ( MonadIO(..) )
import Control.Monad.Reader ( MonadReader(..), Reader, ReaderT(..), asks, runReader )
import Control.Monad.State ( MonadState(..), State, StateT(..), gets, runState )
import Control.Monad.Trans ( MonadTrans(..) )
import Control.Monad.Trans.Maybe ( MaybeT(..) )
import Control.Monad.Trans.Either ( EitherT(..), bimapEitherT, eitherT, hoistEither, left, mapEitherT )
import Data.Bifunctor ( Bifunctor(..) )
import Data.Bool ( Bool(..), (&&), (||) )
import Data.Char ( Char, ord )
import Data.Either ( Either(..), either, lefts, rights, partitionEithers )
import Data.Foldable ( Foldable(..), sequenceA_, traverse_, notElem, toList )
import Data.Function ( const, flip, id, on )
import Data.Functor ( Functor(..) )
import Data.Int ( Int, Int8, Int16, Int32, Int64 )
import Data.List ( (++), drop, dropWhile, filter, partition, take, takeWhile, zip, zipWith )
import Data.List.NonEmpty ( NonEmpty(..), group, groupBy, group1, groupBy1, nonEmpty, head, tail)
import Data.Maybe ( Maybe(..), catMaybes, fromMaybe, maybe )
import Data.Monoid ( Monoid(..), Sum(..), Product(..) )
import Data.Ord ( Ord(..) )
import Data.Semigroup ( Semigroup(..) )
import Data.String ( String )
import Data.Traversable ( Traversable(..) )
import Data.Tuple ( fst, snd, curry, uncurry )
import Data.Word ( Word8, Word16, Word32, Word64 )
import System.IO ( IO )
