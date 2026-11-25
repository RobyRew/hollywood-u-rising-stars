.class public Lorg/cocos2dx/lib/Cocos2dxBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Paint;Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 161
    packed-switch p3, :pswitch_data_0

    move p2, v0

    .line 182
    :goto_0
    :pswitch_0
    return p2

    .line 163
    :pswitch_1
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :pswitch_2
    move p2, v0

    .line 168
    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;II)Landroid/graphics/Paint;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 353
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 354
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 356
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 361
    const-string/jumbo v1, ".ttf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 365
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a:Landroid/content/Context;

    invoke-static {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 366
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 396
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 400
    :goto_1
    return-object v0

    .line 367
    :catch_0
    move-exception v1

    .line 368
    const-string/jumbo v1, "Cocos2dxBitmap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error to create ttf type face: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 378
    :cond_0
    invoke-static {p0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 379
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 384
    :pswitch_0
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 388
    :pswitch_1
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 392
    :pswitch_2
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 405
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const-string/jumbo v0, " "

    .line 434
    :goto_0
    return-object v0

    .line 416
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    const/4 v1, 0x0

    .line 418
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    move v0, v1

    move v1, v5

    .line 419
    :goto_1
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 420
    if-eqz v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 421
    :cond_1
    const-string/jumbo v3, " "

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v0, v1, 0x2

    .line 427
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gt v0, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 434
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 431
    :cond_4
    const-string/jumbo v1, "\n"

    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method private static a(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/util/LinkedList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 298
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 303
    const/4 v0, 0x1

    move v1, v3

    :goto_0
    if-gt v0, v4, :cond_4

    .line 304
    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 305
    if-lt v6, p2, :cond_3

    .line 306
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 308
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    if-le v2, v1, :cond_0

    .line 312
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 333
    :goto_1
    if-ge v0, v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_0
    if-le v6, p2, :cond_1

    .line 320
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 324
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 327
    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v0

    .line 303
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_4
    if-ge v1, v4, :cond_5

    .line 346
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_5
    return-object v5
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/Paint;II)Lorg/cocos2dx/lib/c;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 204
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v1, v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 207
    invoke-static {p0, p3, p2, p1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;

    move-result-object v5

    .line 209
    if-eqz p2, :cond_0

    .line 225
    :goto_0
    new-instance v0, Lorg/cocos2dx/lib/c;

    invoke-direct {v0, p2, v4, v5}, Lorg/cocos2dx/lib/c;-><init>(II[Ljava/lang/String;)V

    return-object v0

    .line 217
    :cond_0
    array-length v6, v5

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v0, v5, v2

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v0, v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 219
    if-le v0, v1, :cond_1

    .line 217
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move p2, v1

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 438
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 439
    if-nez v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->nativeInitBitmapDC(II[B)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;IILandroid/graphics/Paint;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 234
    const-string/jumbo v0, "\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 237
    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v2, v3, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 238
    div-int v2, p1, v2

    .line 240
    if-eqz p2, :cond_5

    .line 241
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 242
    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 247
    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 248
    if-le v6, p2, :cond_1

    .line 249
    invoke-static {p3, v5, p2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 258
    :goto_1
    if-lez v2, :cond_2

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lt v5, v2, :cond_2

    .line 266
    :cond_0
    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 267
    :goto_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 268
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_2

    .line 252
    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 273
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 290
    :cond_4
    :goto_3
    return-object v0

    .line 275
    :cond_5
    if-eqz p1, :cond_4

    array-length v3, v0

    if-le v3, v2, :cond_4

    .line 279
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 280
    :goto_4
    if-ge v1, v2, :cond_6

    .line 281
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 283
    :cond_6
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 284
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_3
.end method

.method private static b(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 447
    if-eqz p0, :cond_0

    .line 448
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 449
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 450
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 451
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 455
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createTextBitmap(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 18

    .prologue
    .line 61
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v0 .. v17}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->createTextBitmapShadowStroke(Ljava/lang/String;Ljava/lang/String;IFFFIIIZFFFZFFFF)V

    .line 66
    return-void
.end method

.method public static createTextBitmapShadowStroke(Ljava/lang/String;Ljava/lang/String;IFFFIIIZFFFZFFFF)V
    .locals 20

    .prologue
    .line 74
    invoke-static/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v9

    .line 77
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-static {v4, v9, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a(Ljava/lang/String;Landroid/graphics/Paint;II)Lorg/cocos2dx/lib/c;

    move-result-object v10

    .line 78
    if-nez p8, :cond_3

    iget v4, v10, Lorg/cocos2dx/lib/c;->b:I

    .line 81
    :goto_0
    const/4 v8, 0x0

    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v6, 0x0

    .line 86
    const/high16 v11, 0x437f0000    # 255.0f

    mul-float v11, v11, p3

    float-to-int v11, v11

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v12, v12, p4

    float-to-int v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float v13, v13, p5

    float-to-int v13, v13

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    if-eqz p13, :cond_0

    .line 91
    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, p17

    move/from16 v6, p17

    move/from16 v7, p17

    move/from16 v8, p17

    .line 96
    :cond_0
    if-eqz p9, :cond_9

    .line 97
    const v11, -0x828283

    .line 98
    move/from16 v0, p12

    move/from16 v1, p10

    move/from16 v2, p11

    invoke-virtual {v9, v0, v1, v2, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 100
    invoke-static/range {p10 .. p10}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 101
    invoke-static/range {p11 .. p11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 103
    move/from16 v0, p10

    float-to-double v12, v0

    const-wide/16 v14, 0x0

    cmpg-double v11, v12, v14

    if-gez v11, :cond_1

    move v7, v8

    .line 106
    :cond_1
    move/from16 v0, p11

    float-to-double v12, v0

    const-wide/16 v14, 0x0

    cmpg-double v11, v12, v14

    if-gez v11, :cond_9

    move v6, v7

    move v7, v5

    .line 112
    :goto_1
    iget v11, v10, Lorg/cocos2dx/lib/c;->a:I

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v8, v12

    float-to-int v8, v8

    add-int/2addr v8, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v7, v11

    float-to-int v7, v7

    add-int/2addr v4, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 114
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 117
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v12

    .line 120
    if-eqz p13, :cond_5

    .line 121
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a(Ljava/lang/String;II)Landroid/graphics/Paint;

    move-result-object v13

    .line 122
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    move/from16 v0, p17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    const/16 v4, 0xff

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v7, v7, p14

    float-to-int v7, v7

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v14, v14, p15

    float-to-int v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v15, v15, p16

    float-to-int v15, v15

    invoke-virtual {v13, v4, v7, v14, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 127
    if-nez p8, :cond_4

    iget v4, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v4, v4

    .line 128
    :goto_2
    iget-object v14, v10, Lorg/cocos2dx/lib/c;->d:[Ljava/lang/String;

    .line 130
    array-length v15, v14

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v15, :cond_5

    aget-object v16, v14, v7

    .line 131
    iget v0, v10, Lorg/cocos2dx/lib/c;->a:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p6

    invoke-static {v9, v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a(Landroid/graphics/Paint;Ljava/lang/String;II)I

    move-result v17

    .line 132
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v6

    int-to-float v0, v4

    move/from16 v18, v0

    add-float v18, v18, v5

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v11, v0, v1, v2, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    iget v0, v10, Lorg/cocos2dx/lib/c;->c:I

    move/from16 v16, v0

    add-int v4, v4, v16

    .line 135
    const-string/jumbo v16, ".ttf"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    const/16 v16, 0xa

    move/from16 v0, p2

    move/from16 v1, v16

    if-lt v0, v1, :cond_2

    .line 136
    add-int/lit8 v4, v4, -0x2

    .line 130
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    move/from16 v4, p8

    .line 78
    goto/16 :goto_0

    .line 127
    :cond_4
    iget v4, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v4, v4

    iget v7, v10, Lorg/cocos2dx/lib/c;->b:I

    sub-int v7, p8, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    goto :goto_2

    .line 142
    :cond_5
    if-nez p8, :cond_7

    iget v4, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v4, v4

    .line 143
    :goto_4
    iget-object v12, v10, Lorg/cocos2dx/lib/c;->d:[Ljava/lang/String;

    .line 144
    array-length v13, v12

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v13, :cond_8

    aget-object v14, v12, v7

    .line 145
    iget v15, v10, Lorg/cocos2dx/lib/c;->a:I

    move/from16 v0, p6

    invoke-static {v9, v14, v15, v0}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a(Landroid/graphics/Paint;Ljava/lang/String;II)I

    move-result v15

    .line 146
    int-to-float v15, v15

    add-float/2addr v15, v6

    int-to-float v0, v4

    move/from16 v16, v0

    add-float v16, v16, v5

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 147
    iget v14, v10, Lorg/cocos2dx/lib/c;->c:I

    add-int/2addr v4, v14

    .line 149
    const-string/jumbo v14, ".ttf"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const/16 v14, 0xa

    move/from16 v0, p2

    if-lt v0, v14, :cond_6

    .line 150
    add-int/lit8 v4, v4, -0x2

    .line 144
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 142
    :cond_7
    iget v4, v12, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v4, v4

    iget v7, v10, Lorg/cocos2dx/lib/c;->b:I

    sub-int v7, p8, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    goto :goto_4

    .line 155
    :cond_8
    invoke-static {v8}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a(Landroid/graphics/Bitmap;)V

    .line 156
    return-void

    :cond_9
    move/from16 v19, v6

    move v6, v7

    move v7, v5

    move/from16 v5, v19

    goto/16 :goto_1
.end method

.method private static native nativeInitBitmapDC(II[B)V
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    sput-object p0, Lorg/cocos2dx/lib/Cocos2dxBitmap;->a:Landroid/content/Context;

    .line 53
    return-void
.end method
