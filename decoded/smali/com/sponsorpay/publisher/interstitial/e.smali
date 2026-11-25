.class public final enum Lcom/sponsorpay/publisher/interstitial/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/interstitial/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sponsorpay/publisher/interstitial/e;

.field public static final enum b:Lcom/sponsorpay/publisher/interstitial/e;

.field public static final enum c:Lcom/sponsorpay/publisher/interstitial/e;

.field public static final enum d:Lcom/sponsorpay/publisher/interstitial/e;

.field public static final enum e:Lcom/sponsorpay/publisher/interstitial/e;

.field private static final synthetic i:[Lcom/sponsorpay/publisher/interstitial/e;


# instance fields
.field private final f:Z

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/e;

    const-string/jumbo v1, "READY_TO_CHECK_OFFERS"

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/publisher/interstitial/e;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/e;->a:Lcom/sponsorpay/publisher/interstitial/e;

    .line 17
    new-instance v5, Lcom/sponsorpay/publisher/interstitial/e;

    const-string/jumbo v6, "REQUESTING_OFFERS"

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/sponsorpay/publisher/interstitial/e;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/sponsorpay/publisher/interstitial/e;->b:Lcom/sponsorpay/publisher/interstitial/e;

    .line 19
    new-instance v5, Lcom/sponsorpay/publisher/interstitial/e;

    const-string/jumbo v6, "VALIDATING_OFFERS"

    move v7, v11

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/sponsorpay/publisher/interstitial/e;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/sponsorpay/publisher/interstitial/e;->c:Lcom/sponsorpay/publisher/interstitial/e;

    .line 21
    new-instance v5, Lcom/sponsorpay/publisher/interstitial/e;

    const-string/jumbo v6, "READY_TO_SHOW_OFFERS"

    move v7, v12

    move v8, v4

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/sponsorpay/publisher/interstitial/e;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/sponsorpay/publisher/interstitial/e;->d:Lcom/sponsorpay/publisher/interstitial/e;

    .line 23
    new-instance v5, Lcom/sponsorpay/publisher/interstitial/e;

    const-string/jumbo v6, "SHOWING_OFFERS"

    move v7, v13

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/sponsorpay/publisher/interstitial/e;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/sponsorpay/publisher/interstitial/e;->e:Lcom/sponsorpay/publisher/interstitial/e;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sponsorpay/publisher/interstitial/e;

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/e;->a:Lcom/sponsorpay/publisher/interstitial/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/e;->b:Lcom/sponsorpay/publisher/interstitial/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/e;->c:Lcom/sponsorpay/publisher/interstitial/e;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/e;->d:Lcom/sponsorpay/publisher/interstitial/e;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/e;->e:Lcom/sponsorpay/publisher/interstitial/e;

    aput-object v1, v0, v13

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/e;->i:[Lcom/sponsorpay/publisher/interstitial/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-boolean p3, p0, Lcom/sponsorpay/publisher/interstitial/e;->f:Z

    .line 32
    iput-boolean p4, p0, Lcom/sponsorpay/publisher/interstitial/e;->h:Z

    .line 33
    iput-boolean p5, p0, Lcom/sponsorpay/publisher/interstitial/e;->g:Z

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/interstitial/e;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/sponsorpay/publisher/interstitial/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/interstitial/e;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/interstitial/e;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/e;->i:[Lcom/sponsorpay/publisher/interstitial/e;

    invoke-virtual {v0}, [Lcom/sponsorpay/publisher/interstitial/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sponsorpay/publisher/interstitial/e;

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/e;->f:Z

    return v0
.end method
