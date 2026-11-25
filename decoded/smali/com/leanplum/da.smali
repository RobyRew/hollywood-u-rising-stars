.class final Lcom/leanplum/da;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/leanplum/ci;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[B

.field private k:[B

.field private l:Z

.field private m:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/leanplum/da;->n:Ljava/util/List;

    .line 80
    new-array v0, v6, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/leanplum/da;->o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/leanplum/ci;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leanplum/da;->b:Z

    .line 51
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/leanplum/da;->j:[B

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/leanplum/da;->k:[B

    .line 54
    iput-boolean v1, p0, Lcom/leanplum/da;->l:Z

    .line 56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/leanplum/da;->m:Ljava/io/ByteArrayOutputStream;

    .line 84
    iput-object p1, p0, Lcom/leanplum/da;->a:Lcom/leanplum/ci;

    .line 85
    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Ljava/lang/Object;II)[B
    .locals 12

    .prologue
    .line 190
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/leanplum/da;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 192
    :goto_0
    if-lez p3, :cond_3

    const/4 v0, 0x2

    .line 193
    :goto_1
    array-length v1, p1

    add-int v3, v1, v0

    .line 194
    const/16 v1, 0x7d

    if-gt v3, v1, :cond_4

    const/4 v1, 0x2

    .line 195
    :goto_2
    iget-boolean v2, p0, Lcom/leanplum/da;->b:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    :goto_3
    add-int v4, v1, v2

    .line 196
    iget-boolean v2, p0, Lcom/leanplum/da;->b:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x80

    .line 197
    :goto_4
    add-int v5, v3, v4

    new-array v5, v5, [B

    .line 199
    const/4 v6, 0x0

    int-to-byte v7, p2

    or-int/lit8 v7, v7, -0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 201
    const/16 v6, 0x7d

    if-gt v3, v6, :cond_8

    .line 202
    const/4 v6, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    .line 219
    :goto_5
    if-lez p3, :cond_0

    .line 220
    div-int/lit16 v2, p3, 0x100

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v4

    .line 221
    add-int/lit8 v2, v4, 0x1

    int-to-byte v3, p3

    aput-byte v3, v5, v2

    .line 223
    :cond_0
    const/4 v2, 0x0

    add-int/2addr v0, v4

    array-length v3, p1

    invoke-static {p1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iget-boolean v0, p0, Lcom/leanplum/da;->b:Z

    if-eqz v0, :cond_1

    .line 226
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 230
    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    invoke-static {v5, v0, v4}, Lcom/leanplum/da;->a([B[BI)[B

    .line 234
    :cond_1
    return-object v5

    .line 190
    :cond_2
    check-cast p1, [B

    goto/16 :goto_0

    .line 192
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 194
    :cond_4
    const v1, 0xffff

    if-gt v3, v1, :cond_5

    const/4 v1, 0x4

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0xa

    goto/16 :goto_2

    .line 195
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 196
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 203
    :cond_8
    const v6, 0xffff

    if-gt v3, v6, :cond_9

    .line 204
    const/4 v6, 0x1

    or-int/lit8 v2, v2, 0x7e

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    .line 205
    const/4 v2, 0x2

    div-int/lit16 v6, v3, 0x100

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 206
    const/4 v2, 0x3

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    goto/16 :goto_5

    .line 208
    :cond_9
    const/4 v6, 0x1

    or-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v5, v6

    .line 209
    const/4 v2, 0x2

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x404c000000000000L    # 56.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 210
    const/4 v2, 0x3

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 211
    const/4 v2, 0x4

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 212
    const/4 v2, 0x5

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4040000000000000L    # 32.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 213
    const/4 v2, 0x6

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 214
    const/4 v2, 0x7

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 215
    const/16 v2, 0x8

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 216
    const/16 v2, 0x9

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    goto/16 :goto_5
.end method

.method private static a([B[BI)[B
    .locals 4

    .prologue
    .line 88
    array-length v0, p1

    if-nez v0, :cond_1

    .line 94
    :cond_0
    return-object p0

    .line 91
    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    sub-int/2addr v1, p2

    if-ge v0, v1, :cond_0

    .line 92
    add-int v1, p2, v0

    add-int v2, p2, v0

    aget-byte v2, p0, v2

    rem-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 319
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/leanplum/db;)V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    :goto_0
    invoke-virtual {p1}, Lcom/leanplum/db;->available()I

    move-result v0

    if-eq v0, v12, :cond_1f

    .line 101
    iget v0, p0, Lcom/leanplum/da;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    invoke-virtual {p1}, Lcom/leanplum/db;->readByte()B

    move-result v7

    .line 1126
    and-int/lit8 v0, v7, 0x40

    const/16 v5, 0x40

    if-ne v0, v5, :cond_1

    move v6, v1

    .line 1127
    :goto_1
    and-int/lit8 v0, v7, 0x20

    const/16 v5, 0x20

    if-ne v0, v5, :cond_2

    move v5, v1

    .line 1128
    :goto_2
    and-int/lit8 v0, v7, 0x10

    const/16 v8, 0x10

    if-ne v0, v8, :cond_3

    move v0, v1

    .line 1130
    :goto_3
    if-nez v6, :cond_0

    if-nez v5, :cond_0

    if-eqz v0, :cond_4

    .line 1131
    :cond_0
    new-instance v0, Lcom/leanplum/dc;

    const-string/jumbo v1, "RSV not zero"

    invoke-direct {v0, v1}, Lcom/leanplum/dc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v6, v2

    .line 1126
    goto :goto_1

    :cond_2
    move v5, v2

    .line 1127
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1128
    goto :goto_3

    .line 1134
    :cond_4
    and-int/lit16 v0, v7, 0x80

    const/16 v5, 0x80

    if-ne v0, v5, :cond_5

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/leanplum/da;->d:Z

    .line 1135
    and-int/lit8 v0, v7, 0xf

    iput v0, p0, Lcom/leanplum/da;->f:I

    .line 1136
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/leanplum/da;->j:[B

    .line 1137
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/leanplum/da;->k:[B

    .line 1139
    sget-object v0, Lcom/leanplum/da;->n:Ljava/util/List;

    iget v5, p0, Lcom/leanplum/da;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1140
    new-instance v0, Lcom/leanplum/dc;

    const-string/jumbo v1, "Bad opcode"

    invoke-direct {v0, v1}, Lcom/leanplum/dc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    .line 1134
    goto :goto_4

    .line 1143
    :cond_6
    sget-object v0, Lcom/leanplum/da;->o:Ljava/util/List;

    iget v5, p0, Lcom/leanplum/da;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/leanplum/da;->d:Z

    if-nez v0, :cond_7

    .line 1144
    new-instance v0, Lcom/leanplum/dc;

    const-string/jumbo v1, "Expected non-final packet"

    invoke-direct {v0, v1}, Lcom/leanplum/dc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_7
    iput v1, p0, Lcom/leanplum/da;->c:I

    goto/16 :goto_0

    .line 106
    :pswitch_1
    invoke-virtual {p1}, Lcom/leanplum/db;->readByte()B

    move-result v5

    .line 1151
    and-int/lit16 v0, v5, 0x80

    const/16 v6, 0x80

    if-ne v0, v6, :cond_8

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/leanplum/da;->e:Z

    .line 1152
    and-int/lit8 v0, v5, 0x7f

    iput v0, p0, Lcom/leanplum/da;->h:I

    .line 1154
    iget v0, p0, Lcom/leanplum/da;->h:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/leanplum/da;->h:I

    const/16 v5, 0x7d

    if-gt v0, v5, :cond_a

    .line 1155
    iget-boolean v0, p0, Lcom/leanplum/da;->e:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    :goto_6
    iput v0, p0, Lcom/leanplum/da;->c:I

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 1151
    goto :goto_5

    :cond_9
    move v0, v3

    .line 1155
    goto :goto_6

    .line 1157
    :cond_a
    iget v0, p0, Lcom/leanplum/da;->h:I

    const/16 v5, 0x7e

    if-ne v0, v5, :cond_b

    move v0, v4

    :goto_7
    iput v0, p0, Lcom/leanplum/da;->g:I

    .line 1158
    iput v4, p0, Lcom/leanplum/da;->c:I

    goto/16 :goto_0

    .line 1157
    :cond_b
    const/16 v0, 0x8

    goto :goto_7

    .line 109
    :pswitch_2
    iget v0, p0, Lcom/leanplum/da;->g:I

    invoke-virtual {p1, v0}, Lcom/leanplum/db;->a(I)[B

    move-result-object v5

    .line 1326
    array-length v8, v5

    .line 1384
    array-length v0, v5

    if-ge v0, v8, :cond_c

    .line 1385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "length must be less than or equal to b.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_c
    const-wide/16 v6, 0x0

    move v0, v2

    .line 1389
    :goto_8
    if-ge v0, v8, :cond_d

    .line 1390
    add-int/lit8 v9, v8, -0x1

    sub-int/2addr v9, v0

    shl-int/lit8 v9, v9, 0x3

    .line 1391
    aget-byte v10, v5, v0

    and-int/lit16 v10, v10, 0xff

    shl-int v9, v10, v9

    int-to-long v10, v9

    add-long/2addr v6, v10

    .line 1389
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1327
    :cond_d
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_e

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v6, v8

    if-lez v0, :cond_f

    .line 1328
    :cond_e
    new-instance v0, Lcom/leanplum/dc;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Bad integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leanplum/dc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1330
    :cond_f
    long-to-int v0, v6

    .line 1163
    iput v0, p0, Lcom/leanplum/da;->h:I

    .line 1164
    iget-boolean v0, p0, Lcom/leanplum/da;->e:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    :goto_9
    iput v0, p0, Lcom/leanplum/da;->c:I

    goto/16 :goto_0

    :cond_10
    move v0, v3

    goto :goto_9

    .line 112
    :pswitch_3
    invoke-virtual {p1, v3}, Lcom/leanplum/db;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/da;->j:[B

    .line 113
    iput v3, p0, Lcom/leanplum/da;->c:I

    goto/16 :goto_0

    .line 116
    :pswitch_4
    iget v0, p0, Lcom/leanplum/da;->h:I

    invoke-virtual {p1, v0}, Lcom/leanplum/db;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/da;->k:[B

    .line 2249
    iget-object v0, p0, Lcom/leanplum/da;->k:[B

    iget-object v5, p0, Lcom/leanplum/da;->j:[B

    invoke-static {v0, v5, v2}, Lcom/leanplum/da;->a([B[BI)[B

    move-result-object v5

    .line 2250
    iget v0, p0, Lcom/leanplum/da;->f:I

    .line 2252
    if-nez v0, :cond_14

    .line 2253
    iget v0, p0, Lcom/leanplum/da;->i:I

    if-nez v0, :cond_11

    .line 2254
    new-instance v0, Lcom/leanplum/dc;

    const-string/jumbo v1, "Mode was not set."

    invoke-direct {v0, v1}, Lcom/leanplum/dc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2256
    :cond_11
    iget-object v0, p0, Lcom/leanplum/da;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2257
    iget-boolean v0, p0, Lcom/leanplum/da;->d:Z

    if-eqz v0, :cond_12

    .line 2258
    iget-object v0, p0, Lcom/leanplum/da;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2259
    iget v5, p0, Lcom/leanplum/da;->i:I

    if-ne v5, v1, :cond_13

    .line 2260
    iget-object v5, p0, Lcom/leanplum/da;->a:Lcom/leanplum/ci;

    invoke-virtual {v5}, Lcom/leanplum/ci;->a()Lcom/leanplum/cm;

    move-result-object v5

    invoke-static {v0}, Lcom/leanplum/da;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/leanplum/cm;->a(Ljava/lang/String;)V

    .line 2305
    :goto_a
    iput v2, p0, Lcom/leanplum/da;->i:I

    .line 2306
    iget-object v0, p0, Lcom/leanplum/da;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 118
    :cond_12
    :goto_b
    iput v2, p0, Lcom/leanplum/da;->c:I

    goto/16 :goto_0

    .line 2262
    :cond_13
    iget-object v0, p0, Lcom/leanplum/da;->a:Lcom/leanplum/ci;

    invoke-virtual {v0}, Lcom/leanplum/ci;->a()Lcom/leanplum/cm;

    move-result-object v0

    invoke-interface {v0}, Lcom/leanplum/cm;->a()V

    goto :goto_a

    .line 2267
    :cond_14
    if-ne v0, v1, :cond_16

    .line 2268
    iget-boolean v0, p0, Lcom/leanplum/da;->d:Z

    if-eqz v0, :cond_15

    .line 2269
    invoke-static {v5}, Lcom/leanplum/da;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 2270
    iget-object v5, p0, Lcom/leanplum/da;->a:Lcom/leanplum/ci;

    invoke-virtual {v5}, Lcom/leanplum/ci;->a()Lcom/leanplum/cm;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/leanplum/cm;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 2272
    :cond_15
    iput v1, p0, Lcom/leanplum/da;->i:I

    .line 2273
    iget-object v0, p0, Lcom/leanplum/da;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_b

    .line 2276
    :cond_16
    if-ne v0, v4, :cond_18

    .line 2277
    iget-boolean v0, p0, Lcom/leanplum/da;->d:Z

    if-eqz v0, :cond_17

    .line 2278
    iget-object v0, p0, Lcom/leanplum/da;->a:Lcom/leanplum/ci;

    invoke-virtual {v0}, Lcom/leanplum/ci;->a()Lcom/leanplum/cm;

    move-result-object v0

    invoke-interface {v0}, Lcom/leanplum/cm;->a()V

    goto :goto_b

    .line 2280
    :cond_17
    iput v4, p0, Lcom/leanplum/da;->i:I

    .line 2281
    iget-object v0, p0, Lcom/leanplum/da;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_b

    .line 2284
    :cond_18
    const/16 v6, 0x8

    if-ne v0, v6, :cond_1d

    .line 2285
    array-length v0, v5

    if-lt v0, v4, :cond_19

    aget-byte v0, v5, v2

    mul-int/lit16 v0, v0, 0x100

    aget-byte v6, v5, v1

    add-int/2addr v0, v6

    .line 2286
    :goto_c
    array-length v6, v5

    if-le v6, v4, :cond_1c

    .line 2373
    array-length v6, v5

    .line 3358
    if-le v4, v6, :cond_1a

    .line 3359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_19
    move v0, v2

    .line 2285
    goto :goto_c

    .line 3361
    :cond_1a
    array-length v7, v5

    .line 3362
    if-le v4, v7, :cond_1b

    .line 3363
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3365
    :cond_1b
    sub-int/2addr v6, v4

    .line 3366
    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3367
    new-array v6, v6, [B

    .line 3368
    invoke-static {v5, v4, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2286
    invoke-static {v6}, Lcom/leanplum/da;->a([B)Ljava/lang/String;

    move-result-object v5

    .line 2288
    :goto_d
    iget-object v6, p0, Lcom/leanplum/da;->a:Lcom/leanplum/ci;

    invoke-virtual {v6}, Lcom/leanplum/ci;->a()Lcom/leanplum/cm;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lcom/leanplum/cm;->a(ILjava/lang/String;)V

    goto :goto_b

    .line 2286
    :cond_1c
    const/4 v5, 0x0

    goto :goto_d

    .line 2290
    :cond_1d
    const/16 v6, 0x9

    if-ne v0, v6, :cond_12

    .line 2291
    array-length v0, v5

    const/16 v6, 0x7d

    if-le v0, v6, :cond_1e

    .line 2292
    new-instance v0, Lcom/leanplum/dc;

    const-string/jumbo v1, "Ping payload too large"

    invoke-direct {v0, v1}, Lcom/leanplum/dc;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2295
    :cond_1e
    iget-object v0, p0, Lcom/leanplum/da;->a:Lcom/leanplum/ci;

    .line 4176
    const/16 v6, 0xa

    invoke-direct {p0, v5, v6, v12}, Lcom/leanplum/da;->a(Ljava/lang/Object;II)[B

    move-result-object v5

    .line 2295
    invoke-virtual {v0, v5}, Lcom/leanplum/ci;->a([B)V

    goto/16 :goto_b

    .line 122
    :cond_1f
    iget-object v0, p0, Lcom/leanplum/da;->a:Lcom/leanplum/ci;

    invoke-virtual {v0}, Lcom/leanplum/ci;->a()Lcom/leanplum/cm;

    move-result-object v0

    const-string/jumbo v1, "EOF"

    invoke-interface {v0, v2, v1}, Lcom/leanplum/cm;->a(ILjava/lang/String;)V

    .line 123
    return-void

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 168
    .line 4180
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/leanplum/da;->a(Ljava/lang/Object;II)[B

    move-result-object v0

    .line 168
    return-object v0
.end method
