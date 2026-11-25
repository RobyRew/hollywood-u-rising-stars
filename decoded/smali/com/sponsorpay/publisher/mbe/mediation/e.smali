.class public final enum Lcom/sponsorpay/publisher/mbe/mediation/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/mbe/mediation/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sponsorpay/publisher/mbe/mediation/e;

.field public static final enum b:Lcom/sponsorpay/publisher/mbe/mediation/e;

.field public static final enum c:Lcom/sponsorpay/publisher/mbe/mediation/e;

.field public static final enum d:Lcom/sponsorpay/publisher/mbe/mediation/e;

.field public static final enum e:Lcom/sponsorpay/publisher/mbe/mediation/e;

.field public static final enum f:Lcom/sponsorpay/publisher/mbe/mediation/e;

.field public static final enum g:Lcom/sponsorpay/publisher/mbe/mediation/e;

.field private static final synthetic i:[Lcom/sponsorpay/publisher/mbe/mediation/e;


# instance fields
.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/e;

    const-string/jumbo v1, "SPTPNValidationAdapterNotIntegrated"

    const-string/jumbo v2, "no_sdk"

    invoke-direct {v0, v1, v4, v2}, Lcom/sponsorpay/publisher/mbe/mediation/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->a:Lcom/sponsorpay/publisher/mbe/mediation/e;

    .line 12
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/e;

    const-string/jumbo v1, "SPTPNValidationNoVideoAvailable"

    const-string/jumbo v2, "no_video"

    invoke-direct {v0, v1, v5, v2}, Lcom/sponsorpay/publisher/mbe/mediation/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->b:Lcom/sponsorpay/publisher/mbe/mediation/e;

    .line 13
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/e;

    const-string/jumbo v1, "SPTPNValidationTimeout"

    const-string/jumbo v2, "timeout"

    invoke-direct {v0, v1, v6, v2}, Lcom/sponsorpay/publisher/mbe/mediation/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->c:Lcom/sponsorpay/publisher/mbe/mediation/e;

    .line 14
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/e;

    const-string/jumbo v1, "SPTPNValidationNetworkError"

    const-string/jumbo v2, "network_error"

    invoke-direct {v0, v1, v7, v2}, Lcom/sponsorpay/publisher/mbe/mediation/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->d:Lcom/sponsorpay/publisher/mbe/mediation/e;

    .line 15
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/e;

    const-string/jumbo v1, "SPTPNValidationDiskError"

    const-string/jumbo v2, "disk_error"

    invoke-direct {v0, v1, v8, v2}, Lcom/sponsorpay/publisher/mbe/mediation/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->e:Lcom/sponsorpay/publisher/mbe/mediation/e;

    .line 16
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/e;

    const-string/jumbo v1, "SPTPNValidationError"

    const/4 v2, 0x5

    const-string/jumbo v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/mediation/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->f:Lcom/sponsorpay/publisher/mbe/mediation/e;

    .line 17
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/e;

    const-string/jumbo v1, "SPTPNValidationSuccess"

    const/4 v2, 0x6

    const-string/jumbo v3, "success"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/mediation/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->g:Lcom/sponsorpay/publisher/mbe/mediation/e;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sponsorpay/publisher/mbe/mediation/e;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/e;->a:Lcom/sponsorpay/publisher/mbe/mediation/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/e;->b:Lcom/sponsorpay/publisher/mbe/mediation/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/e;->c:Lcom/sponsorpay/publisher/mbe/mediation/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/e;->d:Lcom/sponsorpay/publisher/mbe/mediation/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/e;->e:Lcom/sponsorpay/publisher/mbe/mediation/e;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sponsorpay/publisher/mbe/mediation/e;->f:Lcom/sponsorpay/publisher/mbe/mediation/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sponsorpay/publisher/mbe/mediation/e;->g:Lcom/sponsorpay/publisher/mbe/mediation/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->i:[Lcom/sponsorpay/publisher/mbe/mediation/e;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/mediation/e;->h:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/mediation/e;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/sponsorpay/publisher/mbe/mediation/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/mediation/e;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/mbe/mediation/e;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->i:[Lcom/sponsorpay/publisher/mbe/mediation/e;

    invoke-virtual {v0}, [Lcom/sponsorpay/publisher/mbe/mediation/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sponsorpay/publisher/mbe/mediation/e;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/e;->h:Ljava/lang/String;

    return-object v0
.end method
