setdir output
set fileformat png
set captureImages false
setinteraction 0
logfile scaling.log
clearlog
logGLInfo true
set resolution 200
prefilter
setrate 8
setfpswindow 5.0
repeat 7 as i
    resize $resolution $resolution
    log Resolution $resolution x $resolution
    repeat 9 as volume
        setLevel 0
        setLevel 10
        settranslation 0 0 0
        resetrotation
        if $volume == 0
            set volname Head1
            set analytic false
            setvolume 6
            settfparams false 0.097 0.156
            addrotationx -90
            addrotationy 180
            setuseortho true
        endif
        if $volume == 1
            set volname Head2
            set analytic false
            setvolume 6
            settfparams false 0.218 0.142
            addrotationx -90
            addrotationy -90
            setuseortho true
        endif
        if $volume == 2
            set volname Tree1
            set analytic false
            setvolume 7
            settfcode UkxFRgAEAAAAAAAAAgABAQEKAQ8BEgEYARoBHQEjASYBLgExATQBNgI5AT8BQQJEAkcDSgFNAU8CUgNVAVsBXQJjAWYCaQFrAW4CdAF2AXkBfAF_AYQBhwGKAY0BkAGSApUCmwGdAaABowGmAakBqwGuAbEBtAG3AbkBvAG_AcIBxwHKAc0B0gHVAdgB3gLgA-MB6wLpAesB7gHxAvQC9wH0Afeg_wErATEBPwFdAWYBbgF2AX8BhwGNAZICmAGbAZ0BoAGjAaYBqQGrAa4DsQG0AbcBuQG8Ar8BwgLEAccBygLNAdAB0gHVAtgB3gHbAd4B4AHjAukB6wHuAfEB9AH3AfzJ_wIAAQ0KAAEEAgABAQIHAQoEAAEBAQcBCgIPARIBFQEaAR0BIAEmASgBKwEuAjQBOQE_AUEBRAFHAUoCTQJSAVUBWAFbAVIBWwFdAWABYwFmAWkBawJxAXYBfAF_A4IBhAGHAooBkAGSAZgBmwGdAZUBpgGrAa4BpgG0AbcBuQK8Ar8BwgLEAcoCzQLQAdIB1QLYAdsB3gHgAeMB5gHpAesB7gH0AfkE_wHxAfcB_In_AQADBAIPARIBGAEaAR0BIAEjASgBLgE0ATkBPAFBAUcCSgFNAU8BVQFYAV0CZgFpAW4BcQKCAYoBkAGSAZUBmAKdAaMBqQGrArEBtAG3AbkBvAG_AcQCxwHNAdAB0gHVAdgB2wHeAuAB4wHpAu4B8QH0AfkB_Lr_
            settransformparams -0.202214763_0.978688002_-0.0357658304_0_-0.202166244_-0.00598103832_0.979332626_0_0.958247483_0.205267921_0.199067056_0_0_0_0_1~0_0_1.50000024
            setuseortho false
        endif
        if $volume == 3
            set volname Tree2
            set analytic false
            setvolume 7
            settfcode UkxFRgAEAAAAAAAAAgABAQEKAQ8BEgEYARoBHQEjASYBLgExATQBNgI5AT8BQQJEAkcDSgFNAU8CUgNVAVsBXQJjAWYCaQFrAW4CdAF2AXkBfAF_AYQBhwGKAY0BkAGSApUCmwGdAaABowGmAakBqwGuAbEBtAG3AbkBvAG_AcIBxwHKAc0B0gHVAdgB3gLgA-MB6wLpAesB7gHxAvQC9wH0Afeg_wErATEBPwFdAWYBbgF2AX8BhwGNAZICmAGbAZ0BoAGjAaYBqQGrAa4DsQG0AbcBuQG8Ar8BwgLEAccBygLNAdAB0gHVAtgB3gHbAd4B4AHjAukB6wHuAfEB9AH3AfzJ_wIAAQ0KAAEEAgABAQIHAQoEAAEBAQcBCgIPARIBFQEaAR0BIAEmASgBKwEuAjQBOQE_AUEBRAFHAUoCTQJSAVUBWAFbAVIBWwFdAWABYwFmAWkBawJxAXYBfAF_A4IBhAGHAooBkAGSAZgBmwGdAZUBpgGrAa4BpgG0AbcBuQK8Ar8BwgLEAcoCzQLQAdIB1QLYAdsB3gHgAeMB5gHpAesB7gH0AfkE_wHxAfcB_In_AQADBAIPARIBGAEaAR0BIAEjASgBLgE0ATkBPAFBAUcCSgFNAU8BVQFYAV0CZgFpAW4BcQKCAYoBkAGSAZUBmAKdAaMBqQGrArEBtAG3AbkBvAG_AcQCxwHNAdAB0gHVAdgB2wHeAuAB4wHpAu4B8QH0AfkB_Lr_
            settransformparams -0.969087362_0.246711731_0.00148320443_0_-0.012833355_-0.0564099029_0.998324871_0_0.246383488_0.96744591_0.0578331985_0_0_0_0_1~0_0_0.800000072
            setuseortho false
        endif
        if $volume == 4
            set volname Aneurism1
            set analytic false
            setvolume 4
            settfparams true 0.075 0.01
            addrotationy 90
            setuseortho true
        endif
        if $volume == 5
            set volname Aneurism2
            set analytic false
            setvolume 4
            settfcode UkxFRgAEAAAAAAAAAgQBBQEGAQcBCAEJAQoBDAENAQ4BEAERARMBFAEWARgBGgEbAR0BHwEhASMBJQEnASkBLAEuATABMgE1ATcBOgE8AT4BQQFDAUYBSQFLAU4BUAFTAVYBWQFbAV4BYQFkAWYBaQFsAW8BcgF0AXcBegF9AYABgwGFAYgBiwGOAZEBlAGWAZkBnAGfAaEBpAGnAaoBrAGvAbIBtAG3AbkBvAG-AcEBwwHGAcgBywHNAc8B0QHUAdYB2AHaAdwB3gHgAeIB5AHmAecB6QHrAewB7gHvAfEB8gHzAfUB9gH3AfgB-QH6AfsC_AL9Av6G_wIEAQUBBgEHAQgBCQEKAQwBDQEOARABEQETARQBFgEYARoBGwEdAR8BIQEjASUBJwEpASwBLgEwATIBNQE3AToBPAE-AUEBQwFGAUkBSwFOAVABUwFWAVkBWwFeAWEBZAFmAWkBbAFvAXIBdAF3AXoBfQGAAYMBhQGIAYsBjgGRAZQBlgGZAZwBnwGhAaQBpwGqAawBrwGyAbQBtwG5AbwBvgHBAcMBxgHIAcsBzQHPAdEB1AHWAdgB2gHcAd4B4AHiAeQB5gHnAekB6wHsAe4B7wHxAfIB8wH1AfYB9wH4AfkB-gH7AvwC_QL-hv8CBAEFAQYBBwEIAQkBCgEMAQ0BDgEQAREBEwEUARYBGAEaARsBHQEfASEBIwElAScBKQEsAS4BMAEyATUBNwE6ATwBPgFBAUMBRgFJAUsBTgFQAVMBVgFZAVsBXgFhAWQBZgFpAWwBbwFyAXQBdwF6AX0BgAGDAYUBiAGLAY4BkQGUAZYBmQGcAZ8BoQGkAacBqgGsAa8BsgG0AbcBuQG8Ab4BwQHDAcYByAHLAc0BzwHRAdQB1gHYAdoB3AHeAeAB4gHkAeYB5wHpAesB7AHuAe8B8QHyAfMB9QH2AfcB-AH5AfoB-wL8Av0C_ob_BQABCAEJAQoBDAENAQ4BEAERARMBFAEWARgBGgEbAR0BHwEhASMBJQEnASkBLAEuATABMgE1ATcBOgE8AT4BQQFDAUYBSQFLAU4BUAFTAVYBWQFbAV4BYQFkAWYBaQFsAW8BcgF0AXcBegF9AYABgwGFAYgBiwGOAZEBlAGWAZkBnAGfAaEBpAGnAaoBrAGvAbIBtAG3AbkBvAG-AcEBwwHGAcgBywHNAc8B0QHUAdYB2AHaAdwB3gHgAeIB5AHmAecB6QHrAewB7gHvAfEB8gHzAfUB9gH3AfgB-QH6AfsC_AL9Av6G_w
            addrotationy 90
            setuseortho true
        endif
        if $volume == 6
            set volname Sphere
            set analytic true
            setvolume 0
            settfcode UkxFRgAEAAAAAAAANwAV__8AGgAL__8AOAAZ_30ACv8hAAMgAR0BEgEBCgABATYADf9EAA
            settransformparams -0.94459784_-0.268845826_-0.18829757_0_-0.200813919_0.927143097_-0.316352993_0_0.259629518_-0.261014193_-0.929764926_0_0_0_0_1~0_0_0.100000016
            setbackground 1 1 1 1
            setuseortho false
        endif
        if $volume == 7
            set volname ML1
            set analytic true
            setvolume 2
            settfparams true 0.397 0.006
            settransformparams 0.84378463_-0.535941601_0.0281707458_0_0.262970418_0.458637923_0.848821521_0_-0.467838824_-0.708814919_0.527927518_0_0_0_0_1~0_0_0
            setbackground 0 0 1 1
            setuseortho false
        endif
        if $volume == 8
            set volname ML2
            set analytic true
            setvolume 2
            settfparams false 0.38 0.09
            settransformparams 0.84378463_-0.535941601_0.0281707458_0_0.262970418_0.458637923_0.848821521_0_-0.467838824_-0.708814919_0.527927518_0_0_0_0_1~0_0_0
            setbackground 0 0 1 1
            setuseortho false
        endif
        log Volume $volume
        log unlit pass
        setmethod 0
        logfps
        if $captureImages
            screenshot $resolution-$volname-lin.$fileformat
        endif
        setmethod 13
        logfps
        if $captureImages
            screenshot $resolution-$volname-quadB.$fileformat
        endif
        setmethod 26
        logfps
        if $captureImages
            screenshot $resolution-$volname-quadBf.$fileformat
        endif
        setmethod 39
        logfps
        if $captureImages
            screenshot $resolution-$volname-cubicB.$fileformat
        endif
        setmethod 52
        logfps
        if $captureImages
            screenshot $resolution-$volname-cubicBf.$fileformat
        endif
        setmethod 65
        logfps
        if $captureImages
            screenshot $resolution-$volname-cr.$fileformat
        endif
        log lighting pass
        if $volume == 0
            settfparams false 0.097 0.156
        endif
        if $volume == 1
            settfparams false 0.218 0.142
        endif
        if $volume == 2
            settfcode UkxFRgAEAAAAAAAAARUDGAQaAx0CIAUjAiYBKAErAi4BMQE0ATYBOQE8AkEBRAFHAkoBTQJPAVIBVQJYAVsBXQFgAWMCZgJpAWsBbgFxAnQBdgF5AXwBggGEAYoBjQGQAZIBlQKYAZsBnQKgAaMBpgGpAasBuQK_AcQBygHNAdAB0gHVAdgB2wLeAeAB4wHpAesB7gHxAfQB9___of8CUgRPB00FTwJSBFUGWANbAl0CYAFjAmYCaQJrA3ENdAJ2AnkDfAJ_AoIBhAGHBIoCjQGQApIBlQKYAZsCnQGgAaMCpgKrAbEBtAG3AbkBvALCAccBzQHQAdUB2AHbAd4C4AHjAeYB6QLrAe4B8QH3AfyJ_wQA_P8
        endif
        if $volume == 3
            settfcode UkxFRgAEAAAAAAAAARUDGAQaAx0CIAUjAiYBKAErAi4BMQE0ATYBOQE8AkEBRAFHAkoBTQJPAVIBVQJYAVsBXQFgAWMCZgJpAWsBbgFxAnQBdgF5AXwBggGEAYoBjQGQAZIBlQKYAZsBnQKgAaMBpgGpAasBuQK_AcQBygHNAdAB0gHVAdgB2wLeAeAB4wHpAesB7gHxAfQB9___of8CUgRPB00FTwJSBFUGWANbAl0CYAFjAmYCaQJrA3ENdAJ2AnkDfAJ_AoIBhAGHBIoCjQGQApIBlQKYAZsCnQGgAaMCpgKrAbEBtAG3AbkBvALCAccBzQHQAdUB2AHbAd4C4AHjAeYB6QLrAe4B8QH3AfyJ_wQA_P8
        endif
        if $volume == 4
            settfparams true 0.075 0.01
        endif
        if $volume == 5
            # http://www.cgvis.de/vs/?dataset=4&method=46&const=0&ortho=1&vs=1&sr=0&tfType=0&tfStart=0.213&tfWidth=0.005&alpha=0.9900000095367432&level=0&transform=0.803756475_-0.590385795_-0.0736123994_0_0.464429945_0.699930787_-0.542587698_0_0.371860117_0.401920915_0.836767256_0_0_0_0_1%7E0_0_0.700000048
            settfparams false 0.213 0.005
        endif
        if $volume == 6
            settfcode UkxFRgAEAAAAAAAANwAV__8AGgAL__8AOAAZ_30ACv8hAAMgAR0BEgEBCgABATYADf9EAA
        endif
        if $volume == 7
            settfparams true 0.397 0.006
        endif
        if $volume == 8
            settfparams false 0.397 0.006
        endif
        setmethod 7
        logfps
        if $captureImages
            screenshot $resolution-$volname-lin-l.$fileformat
        endif
        setmethod 20
        logfps
        if $captureImages
            screenshot $resolution-$volname-quadB-l.$fileformat
        endif
        setmethod 33
        logfps
        if $captureImages
            screenshot $resolution-$volname-quadBf-l.$fileformat
        endif
        setmethod 46
        logfps
        if $captureImages
            screenshot $resolution-$volname-cubicB-l.$fileformat
        endif
        setmethod 59
        logfps
        if $captureImages
            screenshot $resolution-$volname-cubicBf-l.$fileformat
        endif
        setmethod 72
        logfps
        if $captureImages
            screenshot $resolution-$volname-cr-l.$fileformat
        endif
    endrepeat
    set resolution $resolution + 100
endrepeat
quit
