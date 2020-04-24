#!/bin/bash

export DIR_ROOT="/Users/Shared/Projects"




export DIR="$DIR_ROOT/d/hw-tools"
[ ! -d $DIR ] && echo "Folder $DIR does not exists. Exiting ..." && exit 

[ -d $DIR ] && cd $DIR

export BRANCH="master"
export URL=""
export DIR=""


export BRANCH="master"
export URL="https://gitlab.com/holisticware-tools-xamarin/holisticware.tools.ideas.git"
export DIR="0-ideas"
[ ! -d $DIR ] \
    && \
    git clone \
        --branch master \
        --recursive \
        $URL \
        $DIR

export BRANCH="master"
export URL="https://github.com/holisticware-xamarin/HolisticWare.DotNetNew.XamarinProjectsStructureTemplate.git"
export DIR="DotNetNew.XamarinProjectsStructureTemplate"
[ ! -d $DIR ] \
    && \
    git clone \
        --branch master \
        --recursive \
        $URL \
        $DIR

export BRANCH="master"
export URL="https://github.com/moljac/HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.Intellisense.git"
export DIR="Intellisense"
[ ! -d $DIR ] \
    && \
    git clone \
        --branch master \
        --recursive \
        $URL \
        $DIR

export BRANCH="master"
export URL="https://github.com/moljac/HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.Decompilers.git"
export DIR="Decompilers"
[ ! -d $DIR ] \
    && \
    git clone \
        --branch master \
        --recursive \
        $URL \
        $DIR

export BRANCH="master"
export URL="https://github.com/HolisticWare-Xamarin-Tools/HolisticWare.Xamarin.Tools.NuGet.JunkyAdictAnalyzer.git"
export DIR="JunkyAdictAnalyzer"
[ ! -d $DIR ] \
    && \
    git clone \
        --branch master \
        --recursive \
        $URL \
        $DIR

export BRANCH="master"
export URL="https://github.com/HolisticWare-Xamarin-Tools/HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.MetadataXmlSpitter.git"
export DIR="MetadataXmlSpitter"
[ ! -d $DIR ] \
    && \
    git clone \
        --branch master \
        --recursive \
        $URL \
        $DIR

export BRANCH="master"
export URL="https://github.com/moljac/HolisticWare.Xamarin.Tools.MSBuildBinLogger.git"
export DIR="MSBuildBinLogger"
[ ! -d $DIR ] \
    && \
    git clone \
        --branch master \
        --recursive \
        $URL \
        $DIR

export BRANCH="master"
export URL="https://github.com/moljac/HolisticWare.Xamarin.Tools.Bindings.XamarinAndroid.JarInfoSpitter.git"
export DIR="JarInfoSpitter"
[ ! -d $DIR ] \
    && \
    git clone \
        --branch master \
        --recursive \
        $URL \
        $DIR