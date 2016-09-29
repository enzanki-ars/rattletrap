module Rattletrap.Word64 where

import qualified Data.Binary as Binary
import qualified Data.Binary.Get as Binary
import qualified Data.Binary.Put as Binary
import qualified Data.Word as Word

newtype Word64 = Word64
  { word64Value :: Word.Word64
  } deriving (Eq, Ord, Show)

getWord64 :: Binary.Get Word64
getWord64 = do
  word64 <- Binary.getWord64le
  pure (Word64 word64)

putWord64 :: Word64 -> Binary.Put
putWord64 (Word64 word64) = Binary.putWord64le word64