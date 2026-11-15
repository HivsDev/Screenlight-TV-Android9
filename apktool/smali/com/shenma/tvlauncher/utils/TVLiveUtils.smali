.class public Lcom/shenma/tvlauncher/utils/TVLiveUtils;
.super Ljava/lang/Object;
.source "TVLiveUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBase64Code(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "port"    # J

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 243
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://127.0.0.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/play?enc=base64&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&taskid=&mediatype=m3u8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getData(I)Ljava/util/ArrayList;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 21
    const-string/jumbo v1, "\u89c6\u9891\u89e3\u7801"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-string/jumbo v1, "\u753b\u9762\u6bd4\u4f8b"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-string/jumbo v1, "\u504f\u597d\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const-string/jumbo v1, "\u5207\u6e90\u8d85\u65f6\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 27
    const-string/jumbo v1, "\u8f6f\u89e3\u7801"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    const-string/jumbo v1, "\u786c\u89e3\u7801"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 31
    const-string/jumbo v1, "\u539f\u59cb\u6bd4\u4f8b"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v1, "4:3 \u7f29\u653e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v1, "16:9\u7f29\u653e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string/jumbo v1, "\u9ed8\u8ba4\u5168\u5c4f"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 37
    const-string/jumbo v1, "\u4e0a\u4e0b\u952e\u6362\u53f0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string/jumbo v1, "\u4e0a\u4e0b\u952e\u8c03\u8282\u97f3\u91cf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_3
    const/4 v1, 0x4

    if-ne p0, v1, :cond_4

    .line 41
    const-string v1, "5\u79d2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v1, "8\u79d2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v1, "10\u79d2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v1, "12\u79d2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v1, "15\u79d2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static selectScales(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;III)V
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mVV"    # Lcom/baidu/cyberplayer/core/BVideoView;
    .param p2, "paramInt"    # I
    .param p3, "mWidth"    # I
    .param p4, "mHeight"    # I

    .line 142
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/cyberplayer/core/BVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 143
    return-void

    .line 144
    :cond_0
    move/from16 v2, p3

    .line 145
    .local v2, "dw":I
    move/from16 v3, p4

    .line 146
    .local v3, "dh":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 147
    .local v4, "localRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/core/BVideoView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 148
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 149
    .local v5, "i1":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 150
    .local v6, "i2":I
    sub-int v7, v5, v6

    int-to-double v7, v7

    .line 151
    .local v7, "d1":D
    iget v9, v4, Landroid/graphics/Rect;->right:I

    .line 152
    .local v9, "i3":I
    iget v10, v4, Landroid/graphics/Rect;->left:I

    .line 153
    .local v10, "i4":I
    sub-int v11, v9, v10

    int-to-double v11, v11

    .line 154
    .local v11, "d2":D
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "diplay = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 156
    .local v13, "str2":Ljava/lang/String;
    const-wide/16 v14, 0x0

    cmpg-double v16, v7, v14

    if-gtz v16, :cond_1

    .line 157
    return-void

    .line 158
    :cond_1
    cmpg-double v16, v11, v14

    if-gtz v16, :cond_2

    .line 159
    return-void

    .line 160
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/cyberplayer/core/BVideoView;->getVideoHeight()I

    move-result v14

    .line 161
    .local v14, "mVideoHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/cyberplayer/core/BVideoView;->getVideoHeight()I

    move-result v15

    .line 162
    .local v15, "mVideoWidth":I
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "dw":I
    .end local v3    # "dh":I
    .local v18, "dw":I
    .local v19, "dh":I
    int-to-double v2, v14

    const-wide/16 v16, 0x0

    cmpg-double v20, v2, v16

    if-gtz v20, :cond_3

    .line 163
    return-void

    .line 164
    :cond_3
    int-to-double v2, v15

    cmpg-double v20, v2, v16

    if-gtz v20, :cond_4

    .line 165
    return-void

    .line 166
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/cyberplayer/core/BVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 167
    .local v2, "localLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_a

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    .line 232
    return-void

    .line 223
    :cond_5
    double-to-int v3, v11

    .line 224
    .local v3, "i24":I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 228
    add-int/lit8 v1, p4, 0x78

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/core/BVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    return-void

    .line 208
    .end local v3    # "i24":I
    :cond_6
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v16, v11, v7

    const-wide v20, 0x3ffc71c71c71c71dL    # 1.777777777777778

    const-wide/high16 v22, 0x4030000000000000L    # 16.0

    const-wide/high16 v24, 0x4022000000000000L    # 9.0

    cmpl-double v1, v16, v20

    if-ltz v1, :cond_7

    .line 209
    double-to-int v1, v7

    .line 210
    .local v1, "i18":I
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 211
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v22, v22, v7

    move-object/from16 v16, v4

    .end local v4    # "localRect":Landroid/graphics/Rect;
    .local v16, "localRect":Landroid/graphics/Rect;
    div-double v3, v22, v24

    double-to-int v3, v3

    .line 212
    .local v3, "i19":I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 213
    .end local v1    # "i18":I
    .end local v3    # "i19":I
    goto :goto_0

    .line 214
    .end local v16    # "localRect":Landroid/graphics/Rect;
    .restart local v4    # "localRect":Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v16, v4

    .end local v4    # "localRect":Landroid/graphics/Rect;
    .restart local v16    # "localRect":Landroid/graphics/Rect;
    double-to-int v1, v11

    .line 215
    .local v1, "i22":I
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v24, v24, v11

    div-double v3, v24, v22

    double-to-int v3, v3

    .line 217
    .local v3, "i23":I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 219
    .end local v1    # "i22":I
    .end local v3    # "i23":I
    :goto_0
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/core/BVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    return-void

    .line 193
    .end local v16    # "localRect":Landroid/graphics/Rect;
    .restart local v4    # "localRect":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v16, v4

    .end local v4    # "localRect":Landroid/graphics/Rect;
    .restart local v16    # "localRect":Landroid/graphics/Rect;
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v11, v7

    const-wide v20, 0x3ff5555555555554L    # 1.333333333333333

    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    cmpl-double v1, v3, v20

    if-ltz v1, :cond_9

    .line 194
    double-to-int v1, v7

    .line 195
    .local v1, "i12":I
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v22, v22, v7

    div-double v3, v22, v24

    double-to-int v3, v3

    .line 197
    .local v3, "i13":I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    .end local v1    # "i12":I
    .end local v3    # "i13":I
    goto :goto_1

    .line 199
    :cond_9
    double-to-int v1, v11

    .line 200
    .local v1, "i16":I
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v24, v24, v11

    div-double v3, v24, v22

    double-to-int v3, v3

    .line 202
    .local v3, "i17":I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    .end local v1    # "i16":I
    .end local v3    # "i17":I
    :goto_1
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/core/BVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    return-void

    .line 170
    .end local v16    # "localRect":Landroid/graphics/Rect;
    .restart local v4    # "localRect":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v16, v4

    .end local v4    # "localRect":Landroid/graphics/Rect;
    .restart local v16    # "localRect":Landroid/graphics/Rect;
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v11, v7

    .line 171
    .local v3, "d3":D
    move v1, v15

    .line 172
    .local v1, "i6":I
    move/from16 v17, v14

    .line 173
    .local v17, "i7":I
    move/from16 v20, v5

    .end local v5    # "i1":I
    .local v20, "i1":I
    div-int v5, v1, v17

    move/from16 v21, v6

    .end local v6    # "i2":I
    .local v21, "i2":I
    int-to-double v5, v5

    .line 174
    .local v5, "d4":D
    cmpg-double v22, v3, v5

    if-gez v22, :cond_b

    .line 175
    move/from16 v22, v1

    .end local v1    # "i6":I
    .local v22, "i6":I
    double-to-int v1, v11

    .line 176
    .local v1, "i24":I
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 177
    move-wide/from16 v23, v3

    .end local v3    # "d3":D
    .local v23, "d3":D
    int-to-double v3, v14

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v11

    .line 178
    .local v3, "d7":D
    move-wide/from16 v25, v5

    .end local v5    # "d4":D
    .local v25, "d4":D
    int-to-double v5, v15

    .line 179
    .local v5, "d8":D
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v27, v9

    move/from16 v28, v10

    .end local v9    # "i3":I
    .end local v10    # "i4":I
    .local v27, "i3":I
    .local v28, "i4":I
    div-double v9, v3, v5

    double-to-int v9, v9

    .line 180
    .local v9, "i25":I
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 181
    .end local v1    # "i24":I
    .end local v3    # "d7":D
    .end local v5    # "d8":D
    .end local v9    # "i25":I
    goto :goto_2

    .line 182
    .end local v22    # "i6":I
    .end local v23    # "d3":D
    .end local v25    # "d4":D
    .end local v27    # "i3":I
    .end local v28    # "i4":I
    .local v1, "i6":I
    .local v3, "d3":D
    .local v5, "d4":D
    .local v9, "i3":I
    .restart local v10    # "i4":I
    :cond_b
    move/from16 v22, v1

    move-wide/from16 v23, v3

    move-wide/from16 v25, v5

    move/from16 v27, v9

    move/from16 v28, v10

    .end local v1    # "i6":I
    .end local v3    # "d3":D
    .end local v5    # "d4":D
    .end local v9    # "i3":I
    .end local v10    # "i4":I
    .restart local v22    # "i6":I
    .restart local v23    # "d3":D
    .restart local v25    # "d4":D
    .restart local v27    # "i3":I
    .restart local v28    # "i4":I
    double-to-int v1, v7

    .line 183
    .local v1, "i8":I
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 184
    int-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    .line 185
    .local v3, "d5":D
    int-to-double v5, v14

    .line 186
    .local v5, "d6":D
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v3, v5

    double-to-int v9, v9

    .line 187
    .local v9, "i9":I
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 189
    .end local v1    # "i8":I
    .end local v3    # "d5":D
    .end local v5    # "d6":D
    .end local v9    # "i9":I
    :goto_2
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/core/BVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void
.end method
