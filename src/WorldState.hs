module WorldState where

import qualified Data.Map as M

import ECS.Entities

import Graphics.Gloss.Interface.Pure.Game
    ( Picture (..)
    )

data ControlStream = ControlStream {
    holdingLeftArrow :: Bool,
    holdingRightArrow :: Bool,
    holdingFire :: Bool
}

init :: ControlStream
init = ControlStream {
    holdingLeftArrow = False,
    holdingRightArrow = False,
    holdingFire = False
}

data WorldState = WorldState {
    imageAssets :: M.Map String Picture,
    entities :: [Entity],
    controlStream :: ControlStream
}
