module Component.Markdown (component, Slot) where

import Component.RawHtml as RH
import Data.Const (Const)
import Effect.Aff (Aff)
import Foreign.Marked (marked)
import Halogen as H
import Halogen.HTML as HH
import Prelude (Void)

type Slot = H.Slot (Const Void) Void

component :: forall q o. H.Component HH.HTML q String o Aff
component = RH.mkComponent marked
