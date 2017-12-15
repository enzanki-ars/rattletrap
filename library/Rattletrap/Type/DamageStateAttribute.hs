{-# LANGUAGE TemplateHaskell #-}

module Rattletrap.Type.DamageStateAttribute
  ( DamageStateAttribute(..)
  ) where

import Rattletrap.Type.Common
import Rattletrap.Type.Word8
import Rattletrap.Type.Int32le
import Rattletrap.Type.Vector

data DamageStateAttribute = DamageStateAttribute
  { damageStateAttributeUnknown1 :: Word8
  , damageStateAttributeUnknown2 :: Bool
  , damageStateAttributeUnknown3 :: Int32le
  , damageStateAttributeUnknown4 :: Vector
  , damageStateAttributeUnknown5 :: Bool
  , damageStateAttributeUnknown6 :: Bool
  } deriving (Eq, Ord, Show)

$(deriveJson ''DamageStateAttribute)
