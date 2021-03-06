-- ghc-mod: Making Haskell development *more* fun
-- Copyright (C) 2015  Nikolay Yakimov <root@livid.pp.ru>
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
--
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

module Language.Haskell.GhcMod.Options.DocUtils (
  ($$),
  ($$$),
  (<=>),
  (<$$>),
  (<||>)
) where

import Options.Applicative
import Data.Monoid
import Prelude

infixl 6 <||>
infixr 7 <$$>
infixr 7 $$
infixr 8 <=>
infixr 9 $$$

($$) :: (a -> b) -> a -> b
($$) = ($)

($$$) :: (a -> b) -> a -> b
($$$) = ($)

(<||>) :: Alternative a => a b -> a b -> a b
(<||>) = (<|>)

(<=>) :: Monoid m => m -> m -> m
(<=>) = (<>)

(<$$>) :: Functor f => (a -> b) -> f a -> f b
(<$$>) = (<$>)
