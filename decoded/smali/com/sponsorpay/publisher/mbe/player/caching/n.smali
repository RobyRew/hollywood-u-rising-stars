.class final Lcom/sponsorpay/publisher/mbe/player/caching/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sponsorpay/publisher/mbe/player/caching/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 208
    check-cast p1, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    check-cast p2, Lcom/sponsorpay/publisher/mbe/player/caching/c;

    .line 1211
    invoke-virtual {p1}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->h()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/mbe/player/caching/c;->h()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 208
    return v0
.end method
