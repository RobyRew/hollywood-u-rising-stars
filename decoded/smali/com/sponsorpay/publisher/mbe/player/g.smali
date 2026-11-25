.class public final enum Lcom/sponsorpay/publisher/mbe/player/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/mbe/player/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sponsorpay/publisher/mbe/player/g;

.field public static final enum b:Lcom/sponsorpay/publisher/mbe/player/g;

.field public static final enum c:Lcom/sponsorpay/publisher/mbe/player/g;

.field public static final enum d:Lcom/sponsorpay/publisher/mbe/player/g;

.field public static final enum e:Lcom/sponsorpay/publisher/mbe/player/g;

.field public static final enum f:Lcom/sponsorpay/publisher/mbe/player/g;

.field public static final enum g:Lcom/sponsorpay/publisher/mbe/player/g;

.field private static final synthetic h:[Lcom/sponsorpay/publisher/mbe/player/g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/g;

    const-string/jumbo v1, "IS_NOT_BUFFERING"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/publisher/mbe/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->a:Lcom/sponsorpay/publisher/mbe/player/g;

    .line 16
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/g;

    const-string/jumbo v1, "IS_BUFFERING"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/publisher/mbe/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->b:Lcom/sponsorpay/publisher/mbe/player/g;

    .line 17
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/g;

    const-string/jumbo v1, "UPDATE_TIMER"

    invoke-direct {v0, v1, v5}, Lcom/sponsorpay/publisher/mbe/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->c:Lcom/sponsorpay/publisher/mbe/player/g;

    .line 18
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/g;

    const-string/jumbo v1, "DISPLAY_CLOSE"

    invoke-direct {v0, v1, v6}, Lcom/sponsorpay/publisher/mbe/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->d:Lcom/sponsorpay/publisher/mbe/player/g;

    .line 19
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/g;

    const-string/jumbo v1, "DISMISS_HINT_VIEW"

    invoke-direct {v0, v1, v7}, Lcom/sponsorpay/publisher/mbe/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->e:Lcom/sponsorpay/publisher/mbe/player/g;

    .line 20
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/g;

    const-string/jumbo v1, "DISPLAY_ERROR_DIALOG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/publisher/mbe/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->f:Lcom/sponsorpay/publisher/mbe/player/g;

    .line 21
    new-instance v0, Lcom/sponsorpay/publisher/mbe/player/g;

    const-string/jumbo v1, "DISPLAY_ERROR_LOADING_VIDEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/publisher/mbe/player/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->g:Lcom/sponsorpay/publisher/mbe/player/g;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sponsorpay/publisher/mbe/player/g;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/g;->a:Lcom/sponsorpay/publisher/mbe/player/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/g;->b:Lcom/sponsorpay/publisher/mbe/player/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/g;->c:Lcom/sponsorpay/publisher/mbe/player/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/g;->d:Lcom/sponsorpay/publisher/mbe/player/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sponsorpay/publisher/mbe/player/g;->e:Lcom/sponsorpay/publisher/mbe/player/g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sponsorpay/publisher/mbe/player/g;->f:Lcom/sponsorpay/publisher/mbe/player/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sponsorpay/publisher/mbe/player/g;->g:Lcom/sponsorpay/publisher/mbe/player/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->h:[Lcom/sponsorpay/publisher/mbe/player/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/player/g;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/sponsorpay/publisher/mbe/player/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/player/g;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/mbe/player/g;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sponsorpay/publisher/mbe/player/g;->h:[Lcom/sponsorpay/publisher/mbe/player/g;

    invoke-virtual {v0}, [Lcom/sponsorpay/publisher/mbe/player/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sponsorpay/publisher/mbe/player/g;

    return-object v0
.end method
