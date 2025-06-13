-----------------------------------------------------------------------------
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
-----------------------------------------------------------------------------
module THREE.MeshBasicMaterial
  ( -- * Types
    MeshBasicMaterial (..)
    -- * Methods
  , new
    -- * Methods
  ) where
-----------------------------------------------------------------------------
import           Language.Javascript.JSaddle hiding (new)
-----------------------------------------------------------------------------
import qualified THREE.Internal as THREE
-----------------------------------------------------------------------------
-- | https://threejs.org/docs/#api/en/materials/MeshBasicMaterial
newtype MeshBasicMaterial
  = MeshBasicMaterial
  { unMeshBasicMaterial :: JSVal
  } deriving (MakeObject)
-----------------------------------------------------------------------------
new :: JSM MeshBasicMaterial
new = THREE.new MeshBasicMaterial "MeshBasicMaterial" ([] :: [JSString])
-----------------------------------------------------------------------------
