.class public Lcom/sponsorpay/publisher/mbe/player/caching/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:[Lcom/sponsorpay/publisher/mbe/player/caching/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    const/16 v1, 0x12c

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/sponsorpay/publisher/mbe/player/caching/b;->values()[Lcom/sponsorpay/publisher/mbe/player/caching/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/sponsorpay/publisher/mbe/player/caching/k;

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/a;->c:[Lcom/sponsorpay/publisher/mbe/player/caching/k;

    .line 26
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/a;->a:Ljava/lang/String;

    .line 1039
    if-nez p2, :cond_1

    .line 1040
    const/16 v0, 0xe10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1044
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/a;->b:Ljava/lang/Integer;

    .line 28
    return-void

    .line 1041
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 1042
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/sponsorpay/publisher/mbe/player/caching/b;)Lcom/sponsorpay/publisher/mbe/player/caching/k;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/a;->c:[Lcom/sponsorpay/publisher/mbe/player/caching/k;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/b;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/sponsorpay/publisher/mbe/player/caching/b;Lcom/sponsorpay/publisher/mbe/player/caching/k;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/a;->c:[Lcom/sponsorpay/publisher/mbe/player/caching/k;

    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/b;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    .line 53
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/a;->c:[Lcom/sponsorpay/publisher/mbe/player/caching/k;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/player/caching/k;->a()I

    move-result v0

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/a;->c:[Lcom/sponsorpay/publisher/mbe/player/caching/k;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/mbe/player/caching/k;->a()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
