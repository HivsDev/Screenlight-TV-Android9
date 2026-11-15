.class Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/TransformParser;
.super Ljava/lang/Object;
.source "TransformParser.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/TransformParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 19
    .local v0, "matrix":Landroid/graphics/Matrix;
    :goto_0
    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/TransformParser;->parseTransformItem(Ljava/lang/String;Landroid/graphics/Matrix;)V

    .line 20
    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 21
    .local v1, "rparen":I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_0

    .line 22
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[\\s,]*"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    .end local v1    # "rparen":I
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method

.method private static parseTransformItem(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 31
    const-string v0, "matrix("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v0

    .line 33
    .local v0, "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x6

    if-ne v1, v6, :cond_0

    .line 34
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 35
    .local v1, "mat":Landroid/graphics/Matrix;
    const/16 v7, 0x9

    new-array v7, v7, [F

    iget-object v8, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v5

    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v7, v4

    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 39
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v7, v3

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x3

    aput v3, v7, v4

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v7, v8

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 43
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v7, v4

    aput v2, v7, v6

    const/4 v3, 0x7

    aput v2, v7, v3

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v2

    .line 35
    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 49
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 51
    .end local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v1    # "mat":Landroid/graphics/Matrix;
    :cond_0
    goto/16 :goto_0

    :cond_1
    const-string v0, "translate("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v0

    .line 53
    .restart local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 54
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 55
    .local v1, "tx":F
    const/4 v2, 0x0

    .line 56
    .local v2, "ty":F
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_2

    .line 57
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 59
    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 61
    .end local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v1    # "tx":F
    .end local v2    # "ty":F
    :cond_3
    goto/16 :goto_0

    :cond_4
    const-string v0, "scale("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v0

    .line 63
    .restart local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 64
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 65
    .local v1, "sx":F
    move v2, v1

    .line 66
    .local v2, "sy":F
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_5

    .line 67
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 69
    :cond_5
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 71
    .end local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v1    # "sx":F
    .end local v2    # "sy":F
    :cond_6
    goto/16 :goto_0

    :cond_7
    const-string v0, "skewX("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v0

    .line 73
    .restart local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 74
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 75
    .local v1, "angle":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 77
    .end local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v1    # "angle":F
    :cond_8
    goto/16 :goto_0

    :cond_9
    const-string v0, "skewY("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v0

    .line 79
    .restart local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 80
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 81
    .restart local v1    # "angle":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->preSkew(FF)Z

    .line 83
    .end local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v1    # "angle":F
    :cond_a
    goto :goto_0

    :cond_b
    const-string v0, "rotate("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->parseNumbers(Ljava/lang/String;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v0

    .line 85
    .restart local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 86
    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 87
    .restart local v1    # "angle":F
    const/4 v2, 0x0

    .line 88
    .local v2, "cx":F
    const/4 v5, 0x0

    .line 89
    .local v5, "cy":F
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_c

    .line 90
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 91
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 93
    :cond_c
    invoke-virtual {p1, v2, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 94
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 95
    neg-float v3, v2

    neg-float v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 97
    .end local v0    # "np":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v1    # "angle":F
    .end local v2    # "cx":F
    .end local v5    # "cy":F
    :cond_d
    goto :goto_0

    .line 98
    :cond_e
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/TransformParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transform ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    return-void
.end method
