.class Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPath(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 42
    .param p0, "s"    # Ljava/lang/String;

    .line 34
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 35
    .local v1, "n":I
    new-instance v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;

    invoke-direct {v2, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;-><init>(Ljava/lang/CharSequence;)V

    .line 36
    .local v2, "ph":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->skipWhitespace()V

    .line 37
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 38
    .local v3, "p":Landroid/graphics/Path;
    const/4 v4, 0x0

    .line 39
    .local v4, "lastX":F
    const/4 v5, 0x0

    .line 40
    .local v5, "lastY":F
    const/4 v6, 0x0

    .line 41
    .local v6, "lastX1":F
    const/4 v7, 0x0

    .line 42
    .local v7, "lastY1":F
    const/4 v8, 0x0

    .line 43
    .local v8, "contourInitialX":F
    const/4 v9, 0x0

    .line 44
    .local v9, "contourInitialY":F
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    move-object v15, v10

    .line 45
    .local v15, "r":Landroid/graphics/RectF;
    const/16 v10, 0x78

    move v13, v4

    move v14, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    .line 46
    .end local v4    # "lastX":F
    .end local v5    # "lastY":F
    .end local v6    # "lastX1":F
    .end local v7    # "lastY1":F
    .end local v8    # "contourInitialX":F
    .end local v9    # "contourInitialY":F
    .local v10, "cmd":C
    .local v13, "lastX":F
    .local v14, "lastY":F
    .local v21, "lastX1":F
    .local v22, "lastY1":F
    .local v23, "contourInitialX":F
    .local v24, "contourInitialY":F
    :goto_0
    iget v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    if-ge v4, v1, :cond_f

    .line 47
    iget v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->pos:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 48
    .local v11, "next":C
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    const/16 v5, 0x6d

    if-nez v4, :cond_0

    const/16 v4, 0x2e

    if-eq v11, v4, :cond_0

    const/16 v4, 0x2d

    if-eq v11, v4, :cond_0

    .line 49
    move v4, v11

    .line 50
    .end local v10    # "cmd":C
    .local v4, "cmd":C
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->advance()V

    move v12, v4

    goto :goto_1

    .line 51
    .end local v4    # "cmd":C
    .restart local v10    # "cmd":C
    :cond_0
    const/16 v4, 0x4d

    if-ne v10, v4, :cond_1

    .line 52
    const/16 v4, 0x4c

    move v12, v4

    .end local v10    # "cmd":C
    .restart local v4    # "cmd":C
    goto :goto_1

    .line 53
    .end local v4    # "cmd":C
    .restart local v10    # "cmd":C
    :cond_1
    if-ne v10, v5, :cond_2

    .line 54
    const/16 v4, 0x6c

    move v12, v4

    .end local v10    # "cmd":C
    .restart local v4    # "cmd":C
    goto :goto_1

    .line 53
    .end local v4    # "cmd":C
    .restart local v10    # "cmd":C
    :cond_2
    move v12, v10

    .line 58
    .end local v10    # "cmd":C
    .local v12, "cmd":C
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v3, v15, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 61
    const/16 v25, 0x0

    .line 62
    .local v25, "wasCurve":Z
    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    sparse-switch v12, :sswitch_data_0

    .line 231
    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move-object/from16 v31, v15

    .end local v1    # "n":I
    .end local v11    # "next":C
    .end local v12    # "cmd":C
    .end local v13    # "lastX":F
    .end local v14    # "lastY":F
    .end local v15    # "r":Landroid/graphics/RectF;
    .local v26, "n":I
    .local v27, "next":C
    .local v28, "cmd":C
    .local v29, "lastX":F
    .local v30, "lastY":F
    .local v31, "r":Landroid/graphics/RectF;
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->advance()V

    goto/16 :goto_9

    .line 83
    .end local v26    # "n":I
    .end local v27    # "next":C
    .end local v28    # "cmd":C
    .end local v29    # "lastX":F
    .end local v30    # "lastY":F
    .end local v31    # "r":Landroid/graphics/RectF;
    .restart local v1    # "n":I
    .restart local v11    # "next":C
    .restart local v12    # "cmd":C
    .restart local v13    # "lastX":F
    .restart local v14    # "lastY":F
    .restart local v15    # "r":Landroid/graphics/RectF;
    :sswitch_0
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 84
    move/from16 v13, v23

    .line 85
    move/from16 v14, v24

    .line 86
    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 117
    :sswitch_1
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v4

    .line 118
    .local v4, "y":F
    const/16 v5, 0x76

    if-ne v12, v5, :cond_3

    .line 119
    invoke-virtual {v3, v6, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 120
    add-float/2addr v14, v4

    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 122
    :cond_3
    invoke-virtual {v3, v13, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    move v14, v4

    .line 125
    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 193
    .end local v4    # "y":F
    :sswitch_2
    const/16 v25, 0x1

    .line 194
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v4

    .line 195
    .local v4, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 196
    .local v5, "y":F
    const/16 v6, 0x74

    if-ne v12, v6, :cond_4

    .line 197
    add-float/2addr v4, v13

    .line 198
    add-float/2addr v5, v14

    move/from16 v16, v4

    move/from16 v17, v5

    goto :goto_2

    .line 196
    :cond_4
    move/from16 v16, v4

    move/from16 v17, v5

    .line 200
    .end local v4    # "x":F
    .end local v5    # "y":F
    .local v16, "x":F
    .local v17, "y":F
    :goto_2
    mul-float v4, v13, v7

    sub-float v18, v4, v21

    .line 201
    .local v18, "x1":F
    mul-float v7, v7, v14

    sub-float v19, v7, v22

    .line 202
    .local v19, "y1":F
    move-object v4, v3

    move v5, v13

    move v6, v14

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v16

    move/from16 v10, v17

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 203
    move/from16 v13, v16

    .line 204
    move/from16 v14, v17

    .line 205
    move/from16 v21, v18

    .line 206
    move/from16 v22, v19

    .line 207
    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 153
    .end local v16    # "x":F
    .end local v17    # "y":F
    .end local v18    # "x1":F
    .end local v19    # "y1":F
    :sswitch_3
    const/16 v25, 0x1

    .line 154
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v4

    .line 155
    .local v4, "x2":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 156
    .local v5, "y2":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 157
    .local v6, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v8

    .line 158
    .local v8, "y":F
    const/16 v9, 0x73

    if-ne v12, v9, :cond_5

    .line 159
    add-float/2addr v4, v13

    .line 160
    add-float/2addr v6, v13

    .line 161
    add-float/2addr v5, v14

    .line 162
    add-float/2addr v8, v14

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v8

    goto :goto_3

    .line 158
    :cond_5
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v8

    .line 164
    .end local v4    # "x2":F
    .end local v5    # "y2":F
    .end local v6    # "x":F
    .end local v8    # "y":F
    .local v16, "x2":F
    .local v17, "y2":F
    .local v18, "x":F
    .local v19, "y":F
    :goto_3
    mul-float v4, v13, v7

    sub-float v20, v4, v21

    .line 165
    .local v20, "x1":F
    mul-float v7, v7, v14

    sub-float v26, v7, v22

    .line 166
    .local v26, "y1":F
    move-object v4, v3

    move/from16 v5, v20

    move/from16 v6, v26

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 167
    move/from16 v21, v16

    .line 168
    move/from16 v22, v17

    .line 169
    move/from16 v13, v18

    .line 170
    move/from16 v14, v19

    .line 171
    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 211
    .end local v16    # "x2":F
    .end local v17    # "y2":F
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "x1":F
    .end local v26    # "y1":F
    :sswitch_4
    const/16 v25, 0x1

    .line 212
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v4

    .line 213
    .local v4, "x1":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 214
    .local v5, "y1":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 215
    .restart local v6    # "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v7

    .line 216
    .local v7, "y":F
    const/16 v8, 0x71

    if-ne v12, v8, :cond_6

    .line 217
    add-float/2addr v6, v13

    .line 218
    add-float/2addr v7, v14

    .line 219
    add-float/2addr v4, v13

    .line 220
    add-float/2addr v5, v14

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    goto :goto_4

    .line 216
    :cond_6
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    .line 222
    .end local v4    # "x1":F
    .end local v5    # "y1":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    .local v16, "x1":F
    .local v17, "y1":F
    .restart local v18    # "x":F
    .restart local v19    # "y":F
    :goto_4
    move-object v4, v3

    move v5, v13

    move v6, v14

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 223
    move/from16 v21, v16

    .line 224
    move/from16 v22, v17

    .line 225
    move/from16 v13, v18

    .line 226
    move/from16 v14, v19

    .line 227
    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 65
    .end local v16    # "x1":F
    .end local v17    # "y1":F
    .end local v18    # "x":F
    .end local v19    # "y":F
    :sswitch_5
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v4

    .line 66
    .local v4, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 67
    .local v6, "y":F
    if-ne v12, v5, :cond_7

    .line 68
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 69
    add-float/2addr v13, v4

    .line 70
    add-float/2addr v14, v6

    goto :goto_5

    .line 72
    :cond_7
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 73
    move v5, v4

    .line 74
    .end local v13    # "lastX":F
    .local v5, "lastX":F
    move v7, v6

    move v13, v5

    move v14, v7

    .line 76
    .end local v5    # "lastX":F
    .restart local v13    # "lastX":F
    :goto_5
    move v5, v13

    .line 77
    .end local v23    # "contourInitialX":F
    .local v5, "contourInitialX":F
    move v7, v14

    .line 78
    .end local v24    # "contourInitialY":F
    .local v7, "contourInitialY":F
    move/from16 v26, v1

    move/from16 v23, v5

    move/from16 v24, v7

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 90
    .end local v4    # "x":F
    .end local v5    # "contourInitialX":F
    .end local v6    # "y":F
    .end local v7    # "contourInitialY":F
    .restart local v23    # "contourInitialX":F
    .restart local v24    # "contourInitialY":F
    :sswitch_6
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v4

    .line 91
    .restart local v4    # "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 92
    .local v5, "y":F
    const/16 v6, 0x6c

    if-ne v12, v6, :cond_8

    .line 93
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 94
    add-float/2addr v13, v4

    .line 95
    add-float/2addr v14, v5

    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 97
    :cond_8
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    move v13, v4

    .line 99
    move v14, v5

    .line 101
    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 105
    .end local v4    # "x":F
    .end local v5    # "y":F
    :sswitch_7
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v4

    .line 106
    .restart local v4    # "x":F
    const/16 v5, 0x68

    if-ne v12, v5, :cond_9

    .line 107
    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 108
    add-float/2addr v13, v4

    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 110
    :cond_9
    invoke-virtual {v3, v4, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 111
    move v13, v4

    .line 113
    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 129
    .end local v4    # "x":F
    :sswitch_8
    const/16 v25, 0x1

    .line 130
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v4

    .line 131
    .local v4, "x1":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    .line 132
    .local v5, "y1":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 133
    .local v6, "x2":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v7

    .line 134
    .local v7, "y2":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v8

    .line 135
    .local v8, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v9

    .line 136
    .local v9, "y":F
    const/16 v10, 0x63

    if-ne v12, v10, :cond_a

    .line 137
    add-float/2addr v4, v13

    .line 138
    add-float/2addr v6, v13

    .line 139
    add-float/2addr v8, v13

    .line 140
    add-float/2addr v5, v14

    .line 141
    add-float/2addr v7, v14

    .line 142
    add-float/2addr v9, v14

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v26, v9

    goto :goto_6

    .line 136
    :cond_a
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v26, v9

    .line 144
    .end local v4    # "x1":F
    .end local v5    # "y1":F
    .end local v6    # "x2":F
    .end local v7    # "y2":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    .restart local v16    # "x1":F
    .restart local v17    # "y1":F
    .local v18, "x2":F
    .local v19, "y2":F
    .local v20, "x":F
    .local v26, "y":F
    :goto_6
    move-object v4, v3

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, v26

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 145
    move/from16 v21, v18

    .line 146
    move/from16 v22, v19

    .line 147
    move/from16 v13, v20

    .line 148
    move/from16 v14, v26

    .line 149
    move/from16 v26, v1

    move/from16 v27, v11

    move/from16 v28, v12

    move-object/from16 v31, v15

    goto/16 :goto_9

    .line 175
    .end local v16    # "x1":F
    .end local v17    # "y1":F
    .end local v18    # "x2":F
    .end local v19    # "y2":F
    .end local v20    # "x":F
    .end local v26    # "y":F
    :sswitch_9
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v9

    .line 176
    .local v9, "rx":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v10

    .line 177
    .local v10, "ry":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v7

    .line 178
    .local v7, "theta":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    float-to-int v8, v5

    .line 179
    .local v8, "largeArc":I
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v5

    float-to-int v5, v5

    .line 180
    .local v5, "sweepArc":I
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v6

    .line 181
    .local v6, "x":F
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->nextFloat()F

    move-result v16

    .line 182
    .local v16, "y":F
    const/16 v4, 0x61

    if-ne v12, v4, :cond_b

    .line 183
    add-float/2addr v6, v13

    .line 184
    add-float v16, v16, v14

    move/from16 v4, v16

    goto :goto_7

    .line 182
    :cond_b
    move/from16 v4, v16

    .line 186
    .end local v16    # "y":F
    .local v4, "y":F
    :goto_7
    move/from16 v26, v1

    .end local v1    # "n":I
    .local v26, "n":I
    float-to-double v0, v13

    move/from16 v16, v11

    move/from16 v18, v12

    .end local v11    # "next":C
    .end local v12    # "cmd":C
    .local v16, "next":C
    .local v18, "cmd":C
    float-to-double v11, v14

    move/from16 v19, v13

    move/from16 v20, v14

    .end local v13    # "lastX":F
    .end local v14    # "lastY":F
    .local v19, "lastX":F
    .local v20, "lastY":F
    float-to-double v13, v6

    move-wide/from16 v27, v13

    float-to-double v13, v4

    move-wide/from16 v29, v13

    float-to-double v13, v9

    move-wide/from16 v31, v13

    float-to-double v13, v10

    move-wide/from16 v33, v13

    float-to-double v13, v7

    const/16 v35, 0x0

    move/from16 v36, v4

    const/4 v4, 0x1

    .end local v4    # "y":F
    .local v36, "y":F
    if-ne v8, v4, :cond_c

    const/16 v37, 0x1

    goto :goto_8

    :cond_c
    const/16 v37, 0x0

    :goto_8
    if-ne v5, v4, :cond_d

    const/16 v35, 0x1

    :cond_d
    move-object v4, v3

    move/from16 v38, v5

    move/from16 v39, v6

    .end local v5    # "sweepArc":I
    .end local v6    # "x":F
    .local v38, "sweepArc":I
    .local v39, "x":F
    move-wide v5, v0

    move v0, v7

    move v1, v8

    .end local v7    # "theta":F
    .end local v8    # "largeArc":I
    .local v0, "theta":F
    .local v1, "largeArc":I
    move-wide v7, v11

    move/from16 v40, v9

    move/from16 v41, v10

    .end local v9    # "rx":F
    .end local v10    # "ry":F
    .local v40, "rx":F
    .local v41, "ry":F
    move-wide/from16 v9, v27

    move/from16 v27, v16

    move/from16 v28, v18

    .end local v16    # "next":C
    .end local v18    # "cmd":C
    .restart local v27    # "next":C
    .restart local v28    # "cmd":C
    move-wide/from16 v11, v29

    move/from16 v29, v19

    move/from16 v30, v20

    move-wide/from16 v16, v33

    move-wide/from16 v18, v13

    .end local v19    # "lastX":F
    .end local v20    # "lastY":F
    .restart local v29    # "lastX":F
    .restart local v30    # "lastY":F
    move-wide/from16 v13, v31

    move-object/from16 v31, v15

    .end local v15    # "r":Landroid/graphics/RectF;
    .restart local v31    # "r":Landroid/graphics/RectF;
    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move/from16 v19, v37

    move/from16 v20, v35

    invoke-static/range {v4 .. v20}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathParser;->drawArc(Landroid/graphics/Path;DDDDDDDZZ)V

    .line 187
    move/from16 v13, v39

    .line 188
    .end local v29    # "lastX":F
    .restart local v13    # "lastX":F
    move/from16 v14, v36

    .line 189
    .end local v30    # "lastY":F
    .restart local v14    # "lastY":F
    nop

    .line 233
    .end local v0    # "theta":F
    .end local v1    # "largeArc":I
    .end local v36    # "y":F
    .end local v38    # "sweepArc":I
    .end local v39    # "x":F
    .end local v40    # "rx":F
    .end local v41    # "ry":F
    :goto_9
    if-nez v25, :cond_e

    .line 234
    move v0, v13

    .line 235
    .end local v21    # "lastX1":F
    .local v0, "lastX1":F
    move v1, v14

    move/from16 v21, v0

    move/from16 v22, v1

    .line 237
    .end local v0    # "lastX1":F
    .restart local v21    # "lastX1":F
    :cond_e
    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParserHelper;->skipWhitespace()V

    .line 238
    .end local v25    # "wasCurve":Z
    .end local v27    # "next":C
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v10, v28

    move-object/from16 v15, v31

    goto/16 :goto_0

    .line 239
    .end local v26    # "n":I
    .end local v28    # "cmd":C
    .end local v31    # "r":Landroid/graphics/RectF;
    .local v1, "n":I
    .local v10, "cmd":C
    .restart local v15    # "r":Landroid/graphics/RectF;
    :cond_f
    move/from16 v26, v1

    move/from16 v29, v13

    move/from16 v30, v14

    move-object/from16 v31, v15

    .end local v1    # "n":I
    .end local v13    # "lastX":F
    .end local v14    # "lastY":F
    .end local v15    # "r":Landroid/graphics/RectF;
    .restart local v26    # "n":I
    .restart local v29    # "lastX":F
    .restart local v30    # "lastY":F
    .restart local v31    # "r":Landroid/graphics/RectF;
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static drawArc(Landroid/graphics/Path;DDDDDDDZZ)V
    .locals 75
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "x0"    # D
    .param p3, "y0"    # D
    .param p5, "x"    # D
    .param p7, "y"    # D
    .param p9, "rx"    # D
    .param p11, "ry"    # D
    .param p13, "angle"    # D
    .param p15, "largeArcFlag"    # Z
    .param p16, "sweepFlag"    # Z

    .line 248
    move/from16 v0, p16

    sub-double v1, p1, p5

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 249
    .local v1, "dx2":D
    sub-double v5, p3, p7

    div-double/2addr v5, v3

    .line 250
    .local v5, "dy2":D
    const-wide v7, 0x4076800000000000L    # 360.0

    rem-double v9, p13, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 251
    .end local p13    # "angle":D
    .local v9, "angle":D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 252
    .local v11, "cosAngle":D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 254
    .local v13, "sinAngle":D
    mul-double v15, v11, v1

    mul-double v17, v13, v5

    add-double v7, v15, v17

    .line 255
    .local v7, "x1":D
    neg-double v3, v13

    mul-double v3, v3, v1

    mul-double v17, v11, v5

    add-double v3, v3, v17

    .line 256
    .local v3, "y1":D
    invoke-static/range {p9 .. p10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    .line 257
    .end local p9    # "rx":D
    .local v17, "rx":D
    invoke-static/range {p11 .. p12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    .line 259
    .end local p11    # "ry":D
    .local v21, "ry":D
    mul-double v23, v17, v17

    .line 260
    .local v23, "Prx":D
    mul-double v25, v21, v21

    .line 261
    .local v25, "Pry":D
    mul-double v27, v7, v7

    .line 262
    .local v27, "Px1":D
    mul-double v29, v3, v3

    .line 265
    .local v29, "Py1":D
    div-double v31, v27, v23

    div-double v33, v29, v25

    add-double v31, v31, v33

    .line 266
    .local v31, "radiiCheck":D
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    cmpl-double v35, v31, v33

    if-lez v35, :cond_0

    .line 267
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    mul-double v17, v17, v35

    .line 268
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    mul-double v21, v21, v35

    .line 269
    mul-double v23, v17, v17

    .line 270
    mul-double v25, v21, v21

    .line 274
    :cond_0
    const-wide/high16 v35, -0x4010000000000000L    # -1.0

    move/from16 v15, p15

    if-ne v15, v0, :cond_1

    move-wide/from16 v37, v35

    goto :goto_0

    :cond_1
    move-wide/from16 v37, v33

    .line 275
    .local v37, "sign":D
    :goto_0
    mul-double v39, v23, v25

    mul-double v41, v23, v29

    sub-double v39, v39, v41

    mul-double v41, v25, v27

    sub-double v39, v39, v41

    mul-double v41, v23, v29

    mul-double v43, v25, v27

    add-double v41, v41, v43

    div-double v39, v39, v41

    .line 277
    .local v39, "sq":D
    const-wide/16 v41, 0x0

    cmpg-double v16, v39, v41

    if-gez v16, :cond_2

    move-wide/from16 v43, v41

    goto :goto_1

    :cond_2
    move-wide/from16 v43, v39

    :goto_1
    move-wide/from16 v39, v43

    .line 278
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v43

    mul-double v43, v43, v37

    .line 279
    .local v43, "coef":D
    mul-double v45, v17, v3

    div-double v45, v45, v21

    mul-double v45, v45, v43

    .line 280
    .local v45, "cx1":D
    mul-double v47, v21, v7

    move-wide/from16 v49, v1

    .end local v1    # "dx2":D
    .local v49, "dx2":D
    div-double v1, v47, v17

    neg-double v1, v1

    mul-double v1, v1, v43

    .line 282
    .local v1, "cy1":D
    add-double v47, p1, p5

    const-wide/high16 v51, 0x4000000000000000L    # 2.0

    div-double v47, v47, v51

    .line 283
    .local v47, "sx2":D
    add-double v53, p3, p7

    div-double v53, v53, v51

    .line 284
    .local v53, "sy2":D
    mul-double v51, v11, v45

    mul-double v55, v13, v1

    sub-double v51, v51, v55

    add-double v51, v47, v51

    .line 285
    .local v51, "cx":D
    mul-double v55, v13, v45

    mul-double v57, v11, v1

    add-double v55, v55, v57

    add-double v55, v53, v55

    .line 288
    .local v55, "cy":D
    sub-double v57, v7, v45

    div-double v57, v57, v17

    .line 289
    .local v57, "ux":D
    sub-double v59, v3, v1

    div-double v59, v59, v21

    .line 290
    .local v59, "uy":D
    move-wide/from16 v61, v5

    .end local v5    # "dy2":D
    .local v61, "dy2":D
    neg-double v5, v7

    sub-double v5, v5, v45

    div-double v5, v5, v17

    .line 291
    .local v5, "vx":D
    move-wide/from16 p13, v7

    .end local v7    # "x1":D
    .local p13, "x1":D
    neg-double v7, v3

    sub-double/2addr v7, v1

    div-double v7, v7, v21

    .line 295
    .local v7, "vy":D
    mul-double v63, v57, v57

    mul-double v65, v59, v59

    add-double v63, v63, v65

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v63

    .line 296
    .local v63, "n":D
    move-wide/from16 v65, v57

    .line 297
    .local v65, "p":D
    cmpg-double v16, v59, v41

    if-gez v16, :cond_3

    move-wide/from16 v67, v35

    goto :goto_2

    :cond_3
    move-wide/from16 v67, v33

    :goto_2
    move-wide/from16 v37, v67

    .line 298
    div-double v67, v65, v63

    invoke-static/range {v67 .. v68}, Ljava/lang/Math;->acos(D)D

    move-result-wide v67

    mul-double v67, v67, v37

    invoke-static/range {v67 .. v68}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v67

    .line 301
    .local v67, "angleStart":D
    mul-double v69, v57, v57

    mul-double v71, v59, v59

    add-double v69, v69, v71

    mul-double v71, v5, v5

    mul-double v73, v7, v7

    add-double v71, v71, v73

    mul-double v69, v69, v71

    invoke-static/range {v69 .. v70}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v63

    .line 302
    mul-double v69, v57, v5

    mul-double v71, v59, v7

    add-double v69, v69, v71

    .line 303
    .end local v65    # "p":D
    .local v69, "p":D
    mul-double v65, v57, v7

    mul-double v71, v59, v5

    sub-double v65, v65, v71

    cmpg-double v16, v65, v41

    if-gez v16, :cond_4

    move-wide/from16 v33, v35

    .line 304
    .end local v37    # "sign":D
    .local v33, "sign":D
    :cond_4
    div-double v35, v69, v63

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->acos(D)D

    move-result-wide v35

    mul-double v35, v35, v33

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v35

    .line 305
    .local v35, "angleExtent":D
    if-nez v0, :cond_5

    cmpl-double v16, v35, v41

    if-lez v16, :cond_5

    .line 306
    const-wide v19, 0x4076800000000000L    # 360.0

    sub-double v35, v35, v19

    const-wide v19, 0x4076800000000000L    # 360.0

    goto :goto_3

    .line 307
    :cond_5
    if-eqz v0, :cond_6

    cmpg-double v16, v35, v41

    if-gez v16, :cond_6

    .line 308
    const-wide v19, 0x4076800000000000L    # 360.0

    add-double v35, v35, v19

    goto :goto_3

    .line 307
    :cond_6
    const-wide v19, 0x4076800000000000L    # 360.0

    .line 310
    :goto_3
    move-wide/from16 p9, v1

    .end local v1    # "cy1":D
    .local p9, "cy1":D
    rem-double v0, v35, v19

    .line 311
    .end local v35    # "angleExtent":D
    .local v0, "angleExtent":D
    move-wide/from16 v35, v3

    .end local v3    # "y1":D
    .local v35, "y1":D
    rem-double v2, v67, v19

    .line 313
    .end local v67    # "angleStart":D
    .local v2, "angleStart":D
    new-instance v4, Landroid/graphics/RectF;

    move-wide/from16 p11, v5

    .end local v5    # "vx":D
    .local p11, "vx":D
    sub-double v5, v51, v17

    double-to-float v5, v5

    move-wide/from16 v19, v7

    .end local v7    # "vy":D
    .local v19, "vy":D
    sub-double v6, v55, v21

    double-to-float v6, v6

    add-double v7, v51, v17

    double-to-float v7, v7

    move-wide/from16 v37, v9

    .end local v9    # "angle":D
    .local v37, "angle":D
    add-double v8, v55, v21

    double-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 314
    .local v4, "oval":Landroid/graphics/RectF;
    double-to-float v5, v2

    double-to-float v6, v0

    move-object/from16 v7, p0

    invoke-virtual {v7, v4, v5, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 315
    return-void
.end method
