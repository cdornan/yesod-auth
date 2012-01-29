module Paths_yesod_auth (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,7,10], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/home/apache/.cabal/bin"
libdir     = "/home/apache/.hubrc/heap/245/yesod-auth-0.7.10/ghc-7.0.3"
datadir    = "/home/apache/.cabal/share/yesod-auth-0.7.10"
libexecdir = "/home/apache/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "yesod_auth_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "yesod_auth_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "yesod_auth_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "yesod_auth_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
