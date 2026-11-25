.class public Lc/i;
.super Ljava/lang/Object;


# static fields
.field public static c:I = 0x20

.field public static d:I = 0x0

.field public static e:I = 0x1

.field public static f:I = 0x2


# instance fields
.field public a:I

.field public b:Ljava/nio/MappedByteBuffer;


# direct methods
.method private constructor <init>()V
    .locals 2

    sget v0, Lc/i;->c:I

    sget v1, Lc/i;->e:I

    add-int/2addr v0, v1

    sget v1, Lc/i;->c:I

    mul-int/2addr v0, v1

    sget v1, Lc/i;->f:I

    rem-int/2addr v0, v1

    sget v1, Lc/i;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lc/i;->a()I

    move-result v0

    sput v0, Lc/i;->c:I

    const/16 v0, 0x5f

    sput v0, Lc/i;->d:I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public synthetic constructor <init>(Lc/f;)V
    .locals 2

    sget v0, Lc/i;->c:I

    invoke-static {}, Lc/i;->b()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lc/i;->c:I

    mul-int/2addr v0, v1

    invoke-static {}, Lc/i;->c()I

    move-result v1

    rem-int/2addr v0, v1

    sget v1, Lc/i;->d:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lc/i;->a()I

    move-result v0

    sput v0, Lc/i;->c:I

    invoke-static {}, Lc/i;->a()I

    move-result v0

    sput v0, Lc/i;->d:I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lc/i;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static a()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public static b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
