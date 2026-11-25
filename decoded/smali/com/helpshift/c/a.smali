.class public Lcom/helpshift/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "GN"

    aput-object v1, v0, v3

    const-string/jumbo v1, "KN"

    aput-object v1, v0, v4

    const-string/jumbo v1, "PN"

    aput-object v1, v0, v5

    const-string/jumbo v1, "WR"

    aput-object v1, v0, v6

    const-string/jumbo v1, "PS"

    aput-object v1, v0, v7

    sput-object v0, Lcom/helpshift/c/a;->a:[Ljava/lang/String;

    .line 54
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "L"

    aput-object v1, v0, v3

    const-string/jumbo v1, "R"

    aput-object v1, v0, v4

    const-string/jumbo v1, "N"

    aput-object v1, v0, v5

    const-string/jumbo v1, "M"

    aput-object v1, v0, v6

    const-string/jumbo v1, "B"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "H"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/c/a;->b:[Ljava/lang/String;

    .line 56
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ES"

    aput-object v1, v0, v3

    const-string/jumbo v1, "EP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "EB"

    aput-object v1, v0, v5

    const-string/jumbo v1, "EL"

    aput-object v1, v0, v6

    const-string/jumbo v1, "EY"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "IB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "IL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "EI"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/c/a;->c:[Ljava/lang/String;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "L"

    aput-object v1, v0, v3

    const-string/jumbo v1, "T"

    aput-object v1, v0, v4

    const-string/jumbo v1, "K"

    aput-object v1, v0, v5

    const-string/jumbo v1, "S"

    aput-object v1, v0, v6

    const-string/jumbo v1, "N"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/c/a;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/helpshift/c/a;->e:I

    .line 71
    return-void
.end method

.method private a(Lcom/helpshift/c/b;I)I
    .locals 1

    .prologue
    .line 274
    if-nez p2, :cond_0

    .line 275
    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 277
    :cond_0
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private a(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x58

    const/16 v7, 0x4b

    const/16 v6, 0x53

    const/4 v2, 0x2

    .line 284
    invoke-direct {p0, p1, p3}, Lcom/helpshift/c/a;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p2, v7}, Lcom/helpshift/c/b;->a(C)V

    .line 286
    add-int/lit8 v0, p3, 0x2

    .line 329
    :goto_0
    return v0

    .line 287
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x6

    const-string/jumbo v1, "CAESAR"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p2, v6}, Lcom/helpshift/c/b;->a(C)V

    .line 289
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 290
    :cond_1
    const-string/jumbo v0, "CH"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/c/a;->c(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto :goto_0

    .line 292
    :cond_2
    const-string/jumbo v0, "CZ"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, -0x2

    const/4 v1, 0x4

    const-string/jumbo v3, "WICZ"

    invoke-static {p1, v0, v1, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    invoke-virtual {p2, v6, v8}, Lcom/helpshift/c/b;->a(CC)V

    .line 296
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 297
    :cond_3
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    const-string/jumbo v3, "CIA"

    invoke-static {p1, v0, v1, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {p2, v8}, Lcom/helpshift/c/b;->a(C)V

    .line 300
    add-int/lit8 v0, p3, 0x3

    goto :goto_0

    .line 301
    :cond_4
    const-string/jumbo v0, "CC"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p3, v9, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_6

    .line 304
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/c/a;->b(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto :goto_0

    .line 305
    :cond_6
    const-string/jumbo v3, "CK"

    const-string/jumbo v4, "CG"

    const-string/jumbo v5, "CQ"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 306
    invoke-virtual {p2, v7}, Lcom/helpshift/c/b;->a(C)V

    .line 307
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 308
    :cond_7
    const-string/jumbo v3, "CI"

    const-string/jumbo v4, "CE"

    const-string/jumbo v5, "CY"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 310
    const/4 v2, 0x3

    const-string/jumbo v3, "CIO"

    const-string/jumbo v4, "CIE"

    const-string/jumbo v5, "CIA"

    move-object v0, p1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 311
    invoke-virtual {p2, v6, v8}, Lcom/helpshift/c/b;->a(CC)V

    .line 315
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 313
    :cond_8
    invoke-virtual {p2, v6}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_1

    .line 317
    :cond_9
    invoke-virtual {p2, v7}, Lcom/helpshift/c/b;->a(C)V

    .line 318
    add-int/lit8 v1, p3, 0x1

    const-string/jumbo v3, " C"

    const-string/jumbo v4, " Q"

    const-string/jumbo v5, " G"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 320
    add-int/lit8 v0, p3, 0x3

    goto/16 :goto_0

    .line 321
    :cond_a
    add-int/lit8 v4, p3, 0x1

    const-string/jumbo v6, "C"

    const-string/jumbo v7, "K"

    const-string/jumbo v8, "Q"

    move-object v3, p1

    move v5, v9

    invoke-static/range {v3 .. v8}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "CE"

    const-string/jumbo v3, "CI"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 323
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 325
    :cond_b
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/helpshift/c/b;IZ)I
    .locals 6

    .prologue
    .line 413
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 414
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/c/a;->e(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    .line 463
    :goto_0
    return v0

    .line 415
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_3

    .line 416
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/c/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 417
    const-string/jumbo v0, "KN"

    const-string/jumbo v1, "N"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 418
    :cond_1
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    const-string/jumbo v2, "EY"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_2

    if-nez p4, :cond_2

    .line 420
    const-string/jumbo v0, "N"

    const-string/jumbo v1, "KN"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :cond_2
    const-string/jumbo v0, "KN"

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 425
    :cond_3
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "LI"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 426
    const-string/jumbo v0, "KL"

    const-string/jumbo v1, "L"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 428
    :cond_4
    if-nez p3, :cond_6

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-eq v0, v1, :cond_5

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    sget-object v2, Lcom/helpshift/c/a;->c:[Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    :cond_5
    const/16 v0, 0x4b

    const/16 v1, 0x4a

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/c/b;->a(CC)V

    .line 433
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 434
    :cond_6
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "ER"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x59

    if-ne v0, v1, :cond_8

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string/jumbo v3, "DANGER"

    const-string/jumbo v4, "RANGER"

    const-string/jumbo v5, "MANGER"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "E"

    const-string/jumbo v3, "I"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x3

    const-string/jumbo v2, "RGY"

    const-string/jumbo v3, "OGY"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 440
    const/16 v0, 0x4b

    const/16 v1, 0x4a

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/c/b;->a(CC)V

    .line 441
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 442
    :cond_8
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    const-string/jumbo v3, "E"

    const-string/jumbo v4, "I"

    const-string/jumbo v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x4

    const-string/jumbo v2, "AGGI"

    const-string/jumbo v3, "OGGI"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 445
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string/jumbo v2, "VAN "

    const-string/jumbo v3, "VON "

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string/jumbo v2, "SCH"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "ET"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 449
    :cond_a
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 455
    :goto_2
    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 450
    :cond_b
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    const-string/jumbo v2, "IER"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 451
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_2

    .line 453
    :cond_c
    const/16 v0, 0x4a

    const/16 v1, 0x4b

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/c/b;->a(CC)V

    goto :goto_2

    .line 456
    :cond_d
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_e

    .line 457
    add-int/lit8 v0, p3, 0x2

    .line 458
    const/16 v1, 0x4b

    invoke-virtual {p2, v1}, Lcom/helpshift/c/b;->a(C)V

    goto/16 :goto_0

    .line 460
    :cond_e
    add-int/lit8 v0, p3, 0x1

    .line 461
    const/16 v1, 0x4b

    invoke-virtual {p2, v1}, Lcom/helpshift/c/b;->a(C)V

    goto/16 :goto_0
.end method

.method private a(C)Z
    .locals 2

    .prologue
    .line 865
    const-string/jumbo v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 914
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 922
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 930
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 939
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 950
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 962
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    const/4 v1, 0x4

    aput-object p7, v0, v1

    const/4 v1, 0x5

    aput-object p8, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static a(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 973
    .line 974
    if-ltz p1, :cond_0

    add-int v1, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 975
    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 977
    array-length v3, p3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p3, v1

    .line 978
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 979
    const/4 v0, 0x1

    .line 984
    :cond_0
    return v0

    .line 977
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 336
    add-int/lit8 v1, p3, 0x2

    const-string/jumbo v3, "I"

    const-string/jumbo v4, "E"

    const-string/jumbo v5, "H"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    const-string/jumbo v3, "HU"

    invoke-static {p1, v0, v1, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 339
    if-ne p3, v2, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x5

    const-string/jumbo v2, "UCCEE"

    const-string/jumbo v3, "UCCES"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    :cond_1
    const-string/jumbo v0, "KS"

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(Ljava/lang/String;)V

    .line 347
    :goto_0
    add-int/lit8 v0, p3, 0x3

    .line 353
    :goto_1
    return v0

    .line 345
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_0

    .line 349
    :cond_3
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 350
    add-int/lit8 v0, p3, 0x2

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lcom/helpshift/c/b;IZ)I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x48

    const/4 v3, 0x4

    const/16 v6, 0x4a

    .line 518
    const-string/jumbo v0, "JOSE"

    invoke-static {p1, p3, v3, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SAN "

    invoke-static {p1, v5, v3, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    :cond_0
    if-nez p3, :cond_1

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_2

    const-string/jumbo v0, "SAN "

    invoke-static {p1, v5, v3, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    :cond_2
    invoke-virtual {p2, v4}, Lcom/helpshift/c/b;->a(C)V

    .line 526
    :goto_0
    add-int/lit8 v0, p3, 0x1

    .line 546
    :goto_1
    return v0

    .line 524
    :cond_3
    invoke-virtual {p2, v6, v4}, Lcom/helpshift/c/b;->a(CC)V

    goto :goto_0

    .line 528
    :cond_4
    if-nez p3, :cond_6

    const-string/jumbo v0, "JOSE"

    invoke-static {p1, p3, v3, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 529
    const/16 v0, 0x41

    invoke-virtual {p2, v6, v0}, Lcom/helpshift/c/b;->a(CC)V

    .line 540
    :cond_5
    :goto_2
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v6, :cond_a

    .line 541
    add-int/lit8 v0, p3, 0x2

    goto :goto_1

    .line 530
    :cond_6
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/c/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p4, :cond_8

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_7

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_8

    .line 532
    :cond_7
    invoke-virtual {p2, v6, v4}, Lcom/helpshift/c/b;->a(CC)V

    goto :goto_2

    .line 533
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_9

    .line 534
    const/16 v0, 0x20

    invoke-virtual {p2, v6, v0}, Lcom/helpshift/c/b;->a(CC)V

    goto :goto_2

    .line 535
    :cond_9
    add-int/lit8 v0, p3, 0x1

    sget-object v1, Lcom/helpshift/c/a;->d:[Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v1, p3, -0x1

    const-string/jumbo v3, "S"

    const-string/jumbo v4, "K"

    const-string/jumbo v5, "L"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 537
    invoke-virtual {p2, v6}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_2

    .line 543
    :cond_a
    add-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 781
    const/4 v2, 0x4

    const-string/jumbo v3, "CHIA"

    invoke-static {p1, p2, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 791
    :cond_0
    :goto_0
    return v0

    .line 783
    :cond_1
    if-le p2, v1, :cond_0

    .line 785
    add-int/lit8 v2, p2, -0x2

    invoke-virtual {p0, p1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/helpshift/c/a;->a(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 787
    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x3

    const-string/jumbo v4, "ACH"

    invoke-static {p1, v2, v3, v4}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v2

    .line 791
    const/16 v3, 0x49

    if-eq v2, v3, :cond_2

    const/16 v3, 0x45

    if-ne v2, v3, :cond_3

    :cond_2
    add-int/lit8 v2, p2, -0x2

    const/4 v3, 0x6

    const-string/jumbo v4, "BACHER"

    const-string/jumbo v5, "MACHER"

    invoke-static {p1, v2, v3, v4, v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 5

    .prologue
    const/16 v4, 0x58

    const/16 v3, 0x4b

    .line 360
    if-lez p3, :cond_0

    const/4 v0, 0x4

    const-string/jumbo v1, "CHAE"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p2, v3, v4}, Lcom/helpshift/c/b;->a(CC)V

    .line 362
    add-int/lit8 v0, p3, 0x2

    .line 381
    :goto_0
    return v0

    .line 363
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/helpshift/c/a;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p2, v3}, Lcom/helpshift/c/b;->a(C)V

    .line 366
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/helpshift/c/a;->d(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p2, v3}, Lcom/helpshift/c/b;->a(C)V

    .line 370
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 372
    :cond_2
    if-lez p3, :cond_4

    .line 373
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string/jumbo v2, "MC"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 374
    invoke-virtual {p2, v3}, Lcom/helpshift/c/b;->a(C)V

    .line 381
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p2, v4, v3}, Lcom/helpshift/c/b;->a(CC)V

    goto :goto_1

    .line 379
    :cond_4
    invoke-virtual {p2, v4}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;Lcom/helpshift/c/b;IZ)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/16 v3, 0x52

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    add-int/lit8 v0, p3, -0x2

    const-string/jumbo v1, "IE"

    invoke-static {p1, v0, v4, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, -0x4

    const-string/jumbo v1, "ME"

    const-string/jumbo v2, "MA"

    invoke-static {p1, v0, v4, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p2, v3}, Lcom/helpshift/c/b;->c(C)V

    .line 592
    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, p3, 0x2

    :goto_1
    return v0

    .line 590
    :cond_0
    invoke-virtual {p2, v3}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_0

    .line 592
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 857
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;I)Z
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 800
    if-eqz p2, :cond_0

    move v0, v7

    .line 808
    :goto_0
    return v0

    .line 802
    :cond_0
    add-int/lit8 v0, p2, 0x1

    const-string/jumbo v1, "HARAC"

    const-string/jumbo v2, "HARIS"

    invoke-static {p1, v0, v8, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x3

    const-string/jumbo v3, "HOR"

    const-string/jumbo v4, "HYM"

    const-string/jumbo v5, "HIA"

    const-string/jumbo v6, "HEM"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 804
    goto :goto_0

    .line 805
    :cond_1
    const-string/jumbo v0, "CHORE"

    invoke-static {p1, v7, v8, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 806
    goto :goto_0

    .line 808
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 6

    .prologue
    const/16 v3, 0x54

    const/4 v2, 0x2

    .line 389
    const-string/jumbo v0, "DG"

    invoke-static {p1, p3, v2, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string/jumbo v3, "I"

    const-string/jumbo v4, "E"

    const-string/jumbo v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 393
    add-int/lit8 v0, p3, 0x3

    .line 406
    :goto_0
    return v0

    .line 396
    :cond_0
    const-string/jumbo v0, "TK"

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(Ljava/lang/String;)V

    .line 397
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 399
    :cond_1
    const-string/jumbo v0, "DT"

    const-string/jumbo v1, "DD"

    invoke-static {p1, p3, v2, v0, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {p2, v3}, Lcom/helpshift/c/b;->a(C)V

    .line 401
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {p2, v3}, Lcom/helpshift/c/b;->a(C)V

    .line 404
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Lcom/helpshift/c/b;IZ)I
    .locals 10

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x58

    const/4 v2, 0x1

    const/16 v7, 0x53

    .line 599
    add-int/lit8 v0, p3, -0x1

    const-string/jumbo v1, "ISL"

    const-string/jumbo v3, "YSL"

    invoke-static {p1, v0, v4, v1, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    add-int/lit8 v0, p3, 0x1

    .line 641
    :goto_0
    return v0

    .line 602
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x5

    const-string/jumbo v1, "SUGAR"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {p2, v8, v7}, Lcom/helpshift/c/b;->a(CC)V

    .line 605
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    .line 606
    :cond_1
    const-string/jumbo v0, "SH"

    invoke-static {p1, p3, v9, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 607
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x4

    const-string/jumbo v3, "HEIM"

    const-string/jumbo v4, "HOEK"

    const-string/jumbo v5, "HOLM"

    const-string/jumbo v6, "HOLZ"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {p2, v7}, Lcom/helpshift/c/b;->a(C)V

    .line 613
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {p2, v8}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_1

    .line 614
    :cond_3
    const-string/jumbo v0, "SIO"

    const-string/jumbo v1, "SIA"

    invoke-static {p1, p3, v4, v0, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    const-string/jumbo v1, "SIAN"

    invoke-static {p1, p3, v0, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 616
    :cond_4
    if-eqz p4, :cond_5

    .line 617
    invoke-virtual {p2, v7}, Lcom/helpshift/c/b;->a(C)V

    .line 621
    :goto_2
    add-int/lit8 v0, p3, 0x3

    goto :goto_0

    .line 619
    :cond_5
    invoke-virtual {p2, v7, v8}, Lcom/helpshift/c/b;->a(CC)V

    goto :goto_2

    .line 622
    :cond_6
    if-nez p3, :cond_7

    add-int/lit8 v1, p3, 0x1

    const-string/jumbo v3, "M"

    const-string/jumbo v4, "N"

    const-string/jumbo v5, "L"

    const-string/jumbo v6, "W"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "Z"

    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 628
    :cond_8
    invoke-virtual {p2, v7, v8}, Lcom/helpshift/c/b;->a(CC)V

    .line 629
    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "Z"

    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0

    .line 630
    :cond_a
    const-string/jumbo v0, "SC"

    invoke-static {p1, p3, v9, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 631
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/c/a;->i(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto/16 :goto_0

    .line 633
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_c

    add-int/lit8 v0, p3, -0x2

    const-string/jumbo v1, "AI"

    const-string/jumbo v3, "OI"

    invoke-static {p1, v0, v9, v1, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 635
    invoke-virtual {p2, v7}, Lcom/helpshift/c/b;->c(C)V

    .line 639
    :goto_3
    add-int/lit8 v0, p3, 0x1

    const-string/jumbo v1, "S"

    const-string/jumbo v3, "Z"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 v0, p3, 0x2

    goto/16 :goto_0

    .line 637
    :cond_c
    invoke-virtual {p2, v7}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_3

    .line 639
    :cond_d
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 874
    .line 875
    sget-object v2, Lcom/helpshift/c/a;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 876
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 877
    const/4 v0, 0x1

    .line 881
    :cond_0
    return v0

    .line 875
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;I)Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 816
    const/4 v0, 0x4

    const-string/jumbo v1, "VAN "

    const-string/jumbo v2, "VON "

    invoke-static {p1, v7, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string/jumbo v1, "SCH"

    invoke-static {p1, v7, v0, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x6

    const-string/jumbo v3, "ORCHES"

    const-string/jumbo v4, "ARCHIT"

    const-string/jumbo v5, "ORCHID"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x2

    const-string/jumbo v1, "T"

    const-string/jumbo v2, "S"

    invoke-static {p1, v0, v8, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v1, p2, -0x1

    const-string/jumbo v3, "A"

    const-string/jumbo v4, "O"

    const-string/jumbo v5, "U"

    const-string/jumbo v6, "E"

    move-object v0, p1

    move v2, v8

    invoke-static/range {v0 .. v6}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    add-int/lit8 v0, p2, 0x2

    sget-object v1, Lcom/helpshift/c/a;->b:[Ljava/lang/String;

    invoke-static {p1, v0, v8, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    move v0, v8

    :goto_0
    return v0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method private e(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 10

    .prologue
    const/16 v9, 0x49

    const/4 v6, 0x2

    const/16 v8, 0x4b

    const/4 v2, 0x1

    .line 470
    if-lez p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/c/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p2, v8}, Lcom/helpshift/c/b;->a(C)V

    .line 472
    add-int/lit8 v0, p3, 0x2

    .line 495
    :goto_0
    return v0

    .line 473
    :cond_0
    if-nez p3, :cond_2

    .line 474
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v9, :cond_1

    .line 475
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 479
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {p2, v8}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_1

    .line 480
    :cond_2
    if-le p3, v2, :cond_3

    add-int/lit8 v1, p3, -0x2

    const-string/jumbo v3, "B"

    const-string/jumbo v4, "H"

    const-string/jumbo v5, "D"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    if-le p3, v6, :cond_4

    add-int/lit8 v1, p3, -0x3

    const-string/jumbo v3, "B"

    const-string/jumbo v4, "H"

    const-string/jumbo v5, "D"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x3

    if-le p3, v0, :cond_6

    add-int/lit8 v0, p3, -0x4

    const-string/jumbo v1, "B"

    const-string/jumbo v3, "H"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 484
    :cond_5
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 486
    :cond_6
    if-le p3, v6, :cond_8

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_8

    add-int/lit8 v1, p3, -0x3

    const-string/jumbo v3, "C"

    const-string/jumbo v4, "G"

    const-string/jumbo v5, "L"

    const-string/jumbo v6, "R"

    const-string/jumbo v7, "T"

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 489
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 493
    :cond_7
    :goto_2
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 490
    :cond_8
    if-lez p3, :cond_7

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    if-eq v0, v9, :cond_7

    .line 491
    invoke-virtual {p2, v8}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_2
.end method

.method private e(Ljava/lang/String;Lcom/helpshift/c/b;IZ)I
    .locals 6

    .prologue
    .line 759
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 761
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 762
    add-int/lit8 v0, p3, 0x2

    .line 772
    :goto_0
    return v0

    .line 764
    :cond_0
    add-int/lit8 v1, p3, 0x1

    const/4 v2, 0x2

    const-string/jumbo v3, "ZO"

    const-string/jumbo v4, "ZI"

    const-string/jumbo v5, "ZA"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_2

    if-lez p3, :cond_2

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_2

    .line 766
    :cond_1
    const-string/jumbo v0, "S"

    const-string/jumbo v1, "TS"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :goto_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 768
    :cond_2
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_1

    .line 770
    :cond_3
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 888
    if-nez p1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-object v0

    .line 891
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 892
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 895
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;I)Z
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x1

    .line 827
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ne p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    const-string/jumbo v3, "ILLO"

    const-string/jumbo v4, "ILLA"

    const-string/jumbo v5, "ALLE"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 835
    :goto_0
    return v0

    .line 830
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x2

    const-string/jumbo v3, "AS"

    const-string/jumbo v4, "OS"

    invoke-static {p1, v0, v1, v3, v4}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "A"

    const-string/jumbo v3, "O"

    invoke-static {p1, v0, v6, v1, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 v0, p2, -0x1

    const-string/jumbo v1, "ALLE"

    invoke-static {p1, v0, v2, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    .line 833
    goto :goto_0

    .line 835
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 1

    .prologue
    .line 503
    if-eqz p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/c/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/c/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 506
    add-int/lit8 v0, p3, 0x2

    .line 511
    :goto_0
    return v0

    .line 509
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private f(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 843
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x3

    const-string/jumbo v3, "UMB"

    invoke-static {p1, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    const-string/jumbo v3, "ER"

    invoke-static {p1, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 2

    .prologue
    const/16 v1, 0x4c

    .line 553
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 554
    invoke-direct {p0, p1, p3}, Lcom/helpshift/c/a;->e(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p2, v1}, Lcom/helpshift/c/b;->b(C)V

    .line 559
    :goto_0
    add-int/lit8 v0, p3, 0x2

    .line 564
    :goto_1
    return v0

    .line 557
    :cond_0
    invoke-virtual {p2, v1}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_0

    .line 561
    :cond_1
    add-int/lit8 v0, p3, 0x1

    .line 562
    invoke-virtual {p2, v1}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_1
.end method

.method private h(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 4

    .prologue
    .line 571
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 572
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 573
    add-int/lit8 v0, p3, 0x2

    .line 578
    :goto_0
    return v0

    .line 575
    :cond_0
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 576
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "P"

    const-string/jumbo v3, "B"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private i(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 12

    .prologue
    const/16 v11, 0x58

    const/16 v10, 0x53

    const/4 v9, 0x3

    const/4 v2, 0x2

    .line 648
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_3

    .line 650
    add-int/lit8 v1, p3, 0x3

    const-string/jumbo v3, "OO"

    const-string/jumbo v4, "ER"

    const-string/jumbo v5, "EN"

    const-string/jumbo v6, "UY"

    const-string/jumbo v7, "ED"

    const-string/jumbo v8, "EM"

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    add-int/lit8 v0, p3, 0x3

    const-string/jumbo v1, "ER"

    const-string/jumbo v3, "EN"

    invoke-static {p1, v0, v2, v1, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const-string/jumbo v0, "X"

    const-string/jumbo v1, "SK"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :goto_0
    add-int/lit8 v0, p3, 0x3

    return v0

    .line 656
    :cond_0
    const-string/jumbo v0, "SK"

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {p0, p1, v9}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/c/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, v9}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x57

    if-eq v0, v1, :cond_2

    .line 660
    invoke-virtual {p2, v11, v10}, Lcom/helpshift/c/b;->a(CC)V

    goto :goto_0

    .line 662
    :cond_2
    invoke-virtual {p2, v11}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_0

    .line 665
    :cond_3
    add-int/lit8 v1, p3, 0x2

    const/4 v2, 0x1

    const-string/jumbo v3, "I"

    const-string/jumbo v4, "E"

    const-string/jumbo v5, "Y"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 666
    invoke-virtual {p2, v10}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_0

    .line 668
    :cond_4
    const-string/jumbo v0, "SK"

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0x54

    const/4 v3, 0x3

    .line 677
    const-string/jumbo v0, "TION"

    invoke-static {p1, p3, v7, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 679
    add-int/lit8 v0, p3, 0x3

    .line 697
    :goto_0
    return v0

    .line 680
    :cond_0
    const-string/jumbo v0, "TIA"

    const-string/jumbo v1, "TCH"

    invoke-static {p1, p3, v3, v0, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 682
    add-int/lit8 v0, p3, 0x3

    goto :goto_0

    .line 683
    :cond_1
    const-string/jumbo v0, "TH"

    invoke-static {p1, p3, v6, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "TTH"

    invoke-static {p1, p3, v3, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 684
    :cond_2
    add-int/lit8 v0, p3, 0x2

    const-string/jumbo v1, "OM"

    const-string/jumbo v2, "AM"

    invoke-static {p1, v0, v6, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "VAN "

    const-string/jumbo v1, "VON "

    invoke-static {p1, v5, v7, v0, v1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "SCH"

    invoke-static {p1, v5, v3, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 688
    :cond_3
    invoke-virtual {p2, v4}, Lcom/helpshift/c/b;->a(C)V

    .line 692
    :goto_1
    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    .line 690
    :cond_4
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v4}, Lcom/helpshift/c/b;->a(CC)V

    goto :goto_1

    .line 694
    :cond_5
    invoke-virtual {p2, v4}, Lcom/helpshift/c/b;->a(C)V

    .line 695
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "T"

    const-string/jumbo v3, "D"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_6
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method private k(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 8

    .prologue
    const/16 v7, 0x46

    const/16 v2, 0x41

    const/4 v1, 0x2

    .line 704
    const-string/jumbo v0, "WR"

    invoke-static {p1, p3, v1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 707
    add-int/lit8 v0, p3, 0x2

    .line 733
    :goto_0
    return v0

    .line 709
    :cond_0
    if-nez p3, :cond_3

    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/c/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "WH"

    invoke-static {p1, p3, v1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/c/a;->a(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    invoke-virtual {p2, v2, v7}, Lcom/helpshift/c/b;->a(CC)V

    .line 718
    :goto_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p2, v2}, Lcom/helpshift/c/b;->a(C)V

    goto :goto_1

    .line 719
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_4

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/helpshift/c/a;->a(C)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    add-int/lit8 v1, p3, -0x1

    const/4 v2, 0x5

    const-string/jumbo v3, "EWSKI"

    const-string/jumbo v4, "EWSKY"

    const-string/jumbo v5, "OWSKI"

    const-string/jumbo v6, "OWSKY"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string/jumbo v2, "SCH"

    invoke-static {p1, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 723
    :cond_5
    invoke-virtual {p2, v7}, Lcom/helpshift/c/b;->c(C)V

    .line 724
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    .line 725
    :cond_6
    const/4 v0, 0x4

    const-string/jumbo v1, "WICZ"

    const-string/jumbo v2, "WITZ"

    invoke-static {p1, p3, v0, v1, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 727
    const-string/jumbo v0, "TS"

    const-string/jumbo v1, "FX"

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    add-int/lit8 v0, p3, 0x4

    goto/16 :goto_0

    .line 730
    :cond_7
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0
.end method

.method private l(Ljava/lang/String;Lcom/helpshift/c/b;I)I
    .locals 4

    .prologue
    .line 740
    if-nez p3, :cond_0

    .line 741
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(C)V

    .line 742
    add-int/lit8 v0, p3, 0x1

    .line 752
    :goto_0
    return v0

    .line 744
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    add-int/lit8 v0, p3, -0x3

    const/4 v1, 0x3

    const-string/jumbo v2, "IAU"

    const-string/jumbo v3, "EAU"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, -0x2

    const/4 v1, 0x2

    const-string/jumbo v2, "AU"

    const-string/jumbo v3, "OU"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    :cond_1
    const-string/jumbo v0, "KS"

    invoke-virtual {p2, v0}, Lcom/helpshift/c/b;->a(Ljava/lang/String;)V

    .line 750
    :cond_2
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const-string/jumbo v2, "C"

    const-string/jumbo v3, "X"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpshift/c/a;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;I)C
    .locals 1

    .prologue
    .line 904
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 905
    :cond_0
    const/4 v0, 0x0

    .line 907
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/helpshift/c/a;->e:I

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x4e

    const/16 v7, 0x4b

    const/16 v6, 0x46

    .line 91
    invoke-direct {p0, p1}, Lcom/helpshift/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    if-nez v1, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-direct {p0, v1}, Lcom/helpshift/c/a;->c(Ljava/lang/String;)Z

    move-result v2

    .line 97
    invoke-direct {p0, v1}, Lcom/helpshift/c/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 99
    :goto_1
    new-instance v3, Lcom/helpshift/c/b;

    invoke-virtual {p0}, Lcom/helpshift/c/a;->a()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/helpshift/c/b;-><init>(Lcom/helpshift/c/a;I)V

    .line 101
    :goto_2
    invoke-virtual {v3}, Lcom/helpshift/c/b;->c()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-gt v0, v4, :cond_9

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 190
    goto :goto_2

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 109
    :sswitch_0
    invoke-direct {p0, v3, v0}, Lcom/helpshift/c/a;->a(Lcom/helpshift/c/b;I)I

    move-result v0

    goto :goto_2

    .line 112
    :sswitch_1
    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Lcom/helpshift/c/b;->a(C)V

    .line 113
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x42

    if-ne v4, v5, :cond_2

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 117
    :sswitch_2
    const/16 v4, 0x53

    invoke-virtual {v3, v4}, Lcom/helpshift/c/b;->a(C)V

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    goto :goto_2

    .line 121
    :sswitch_3
    invoke-direct {p0, v1, v3, v0}, Lcom/helpshift/c/a;->a(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto :goto_2

    .line 124
    :sswitch_4
    invoke-direct {p0, v1, v3, v0}, Lcom/helpshift/c/a;->d(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto :goto_2

    .line 127
    :sswitch_5
    invoke-virtual {v3, v6}, Lcom/helpshift/c/b;->a(C)V

    .line 128
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    :sswitch_6
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/helpshift/c/a;->a(Ljava/lang/String;Lcom/helpshift/c/b;IZ)I

    move-result v0

    goto :goto_2

    .line 134
    :sswitch_7
    invoke-direct {p0, v1, v3, v0}, Lcom/helpshift/c/a;->f(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto :goto_2

    .line 137
    :sswitch_8
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/helpshift/c/a;->b(Ljava/lang/String;Lcom/helpshift/c/b;IZ)I

    move-result v0

    goto :goto_2

    .line 140
    :sswitch_9
    invoke-virtual {v3, v7}, Lcom/helpshift/c/b;->a(C)V

    .line 141
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v7, :cond_4

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 144
    :sswitch_a
    invoke-direct {p0, v1, v3, v0}, Lcom/helpshift/c/a;->g(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto :goto_2

    .line 147
    :sswitch_b
    const/16 v4, 0x4d

    invoke-virtual {v3, v4}, Lcom/helpshift/c/b;->a(C)V

    .line 148
    invoke-direct {p0, v1, v0}, Lcom/helpshift/c/a;->f(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 151
    :sswitch_c
    invoke-virtual {v3, v8}, Lcom/helpshift/c/b;->a(C)V

    .line 152
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v4

    if-ne v4, v8, :cond_6

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 156
    :sswitch_d
    invoke-virtual {v3, v8}, Lcom/helpshift/c/b;->a(C)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
    goto/16 :goto_2

    .line 160
    :sswitch_e
    invoke-direct {p0, v1, v3, v0}, Lcom/helpshift/c/a;->h(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto/16 :goto_2

    .line 163
    :sswitch_f
    invoke-virtual {v3, v7}, Lcom/helpshift/c/b;->a(C)V

    .line 164
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x51

    if-ne v4, v5, :cond_7

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 167
    :sswitch_10
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/helpshift/c/a;->c(Ljava/lang/String;Lcom/helpshift/c/b;IZ)I

    move-result v0

    goto/16 :goto_2

    .line 170
    :sswitch_11
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/helpshift/c/a;->d(Ljava/lang/String;Lcom/helpshift/c/b;IZ)I

    move-result v0

    goto/16 :goto_2

    .line 173
    :sswitch_12
    invoke-direct {p0, v1, v3, v0}, Lcom/helpshift/c/a;->j(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto/16 :goto_2

    .line 176
    :sswitch_13
    invoke-virtual {v3, v6}, Lcom/helpshift/c/b;->a(C)V

    .line 177
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/helpshift/c/a;->a(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_8

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 180
    :sswitch_14
    invoke-direct {p0, v1, v3, v0}, Lcom/helpshift/c/a;->k(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto/16 :goto_2

    .line 183
    :sswitch_15
    invoke-direct {p0, v1, v3, v0}, Lcom/helpshift/c/a;->l(Ljava/lang/String;Lcom/helpshift/c/b;I)I

    move-result v0

    goto/16 :goto_2

    .line 186
    :sswitch_16
    invoke-direct {p0, v1, v3, v0, v2}, Lcom/helpshift/c/a;->e(Ljava/lang/String;Lcom/helpshift/c/b;IZ)I

    move-result v0

    goto/16 :goto_2

    .line 194
    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {v3}, Lcom/helpshift/c/b;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v3}, Lcom/helpshift/c/b;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_3
        0x44 -> :sswitch_4
        0x45 -> :sswitch_0
        0x46 -> :sswitch_5
        0x47 -> :sswitch_6
        0x48 -> :sswitch_7
        0x49 -> :sswitch_0
        0x4a -> :sswitch_8
        0x4b -> :sswitch_9
        0x4c -> :sswitch_a
        0x4d -> :sswitch_b
        0x4e -> :sswitch_c
        0x4f -> :sswitch_0
        0x50 -> :sswitch_e
        0x51 -> :sswitch_f
        0x52 -> :sswitch_10
        0x53 -> :sswitch_11
        0x54 -> :sswitch_12
        0x55 -> :sswitch_0
        0x56 -> :sswitch_13
        0x57 -> :sswitch_14
        0x58 -> :sswitch_15
        0x59 -> :sswitch_0
        0x5a -> :sswitch_16
        0xc7 -> :sswitch_2
        0xd1 -> :sswitch_d
    .end sparse-switch
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/helpshift/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
