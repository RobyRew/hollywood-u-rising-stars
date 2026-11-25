.class public final enum Lcom/sponsorpay/publisher/mbe/player/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/mbe/player/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sponsorpay/publisher/mbe/player/e;

.field public static final enum b:Lcom/sponsorpay/publisher/mbe/player/e;

.field public static final enum c:Lcom/sponsorpay/publisher/mbe/player/e;

.field public static final enum d:Lcom/sponsorpay/publisher/mbe/player/e;

.field public static final enum e:Lcom/sponsorpay/publisher/mbe/player/e;

.field private static final synthetic g:[Lcom/sponsorpay/publisher/mbe/player/e;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/e;

    const-string/jumbo v1, "SPNativeVideoPlayerPlayingEvent"

    const-string/jumbo v2, "playing"

    invoke-direct {v0, v1, v3, v2}, Lcom/sponsorpay/publisher/mbe/player/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->a:Lcom/sponsorpay/publisher/mbe/player/e;

    .line 12
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/e;

    const-string/jumbo v1, "SPNativeVideoPlayerTimeUpdateEvent"

    const-string/jumbo v2, "timeupdate"

    invoke-direct {v0, v1, v4, v2}, Lcom/sponsorpay/publisher/mbe/player/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->b:Lcom/sponsorpay/publisher/mbe/player/e;

    .line 13
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/e;

    const-string/jumbo v1, "SPNativeVideoPlayerEndedEvent"

    const-string/jumbo v2, "ended"

    invoke-direct {v0, v1, v5, v2}, Lcom/sponsorpay/publisher/mbe/player/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->c:Lcom/sponsorpay/publisher/mbe/player/e;

    .line 14
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/e;

    const-string/jumbo v1, "SPNativeVideoPlayerClickThroughEvent"

    const-string/jumbo v2, "clickThrough"

    invoke-direct {v0, v1, v6, v2}, Lcom/sponsorpay/publisher/mbe/player/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->d:Lcom/sponsorpay/publisher/mbe/player/e;

    .line 15
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/e;

    const-string/jumbo v1, "SPNativeVideoPlayerCancelEvent"

    const-string/jumbo v2, "cancel"

    invoke-direct {v0, v1, v7, v2}, Lcom/sponsorpay/publisher/mbe/player/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->e:Lcom/sponsorpay/publisher/mbe/player/e;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sponsorpay/publisher/mbe/player/e;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/e;->a:Lcom/sponsorpay/publisher/mbe/player/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/e;->b:Lcom/sponsorpay/publisher/mbe/player/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/e;->c:Lcom/sponsorpay/publisher/mbe/player/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/e;->d:Lcom/sponsorpay/publisher/mbe/player/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/e;->e:Lcom/sponsorpay/publisher/mbe/player/e;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->g:[Lcom/sponsorpay/publisher/mbe/player/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/player/e;->f:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/e;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/sponsorpay/publisher/mbe/player/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/e;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/mbe/player/e;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/e;->g:[Lcom/sponsorpay/publisher/mbe/player/e;

    invoke-virtual {v0}, [Lcom/sponsorpay/publisher/mbe/player/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sponsorpay/publisher/mbe/player/e;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/e;->f:Ljava/lang/String;

    return-object v0
.end method
