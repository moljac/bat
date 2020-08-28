#!/bin/bash

export DIR_ROOT="/Users/Shared/Projects"




export DIR="$DIR_ROOT/d/Samples"
[ ! -d $DIR ] && echo "Folder $DIR does not exists. Exiting ..." && exit 

[ -d $DIR ] && cd $DIR

export URL=""
export BRANCH="master"
export DIR=""


export URL="https://github.com/moljac/Samples.AndroidX.git"
export BRANCH="master"
export DIR="Samples.AX"
[ ! -d $DIR ] \
    && \
    git clone \
        --recursive \
        --branch $BRANCH \
        $URL \
        $DIR


export URL="https://github.com/moljac/Samples.GooglePlayServices-Firebase.git"
export BRANCH="master"
export DIR="Samples.GPS-FB"
[ ! -d $DIR ] \
    && \
    git clone \
        --recursive \
        --branch $BRANCH \
        $URL \
        $DIR

export URL="https://github.com/moljac/Samples.MachineLearning.git"
export BRANCH="master"
export DIR="Samples.ML"
[ ! -d $DIR ] \
    && \
    git clone \
        --recursive \
        --branch $BRANCH \
        $URL \
        $DIR

export URL="https://github.com/moljac/Samples.Cake.git"
export BRANCH="master"
export DIR="Samples.Cake"
[ ! -d $DIR ] \
    && \
    git clone \
        --recursive \
        --branch $BRANCH \
        $URL \
        $DIR

export URL="https://github.com/moljac/Samples.Xamarin.Forms.git"
export BRANCH="master"
export DIR="Samples.Xamarin.Forms"
[ ! -d $DIR ] \
    && \
    git clone \
        --recursive \
        --branch $BRANCH \
        $URL \
        $DIR

export URL="https://github.com/moljac/Samples.CSharp.git"
export BRANCH="master"
export DIR="Samples.CSharp"
[ ! -d $DIR ] \
    && \
    git clone \
        --recursive \
        --branch $BRANCH \
        $URL \
        $DIR

