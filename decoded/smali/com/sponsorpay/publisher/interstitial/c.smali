.class public Lcom/sponsorpay/publisher/interstitial/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/sponsorpay/publisher/interstitial/c;


# instance fields
.field private b:Lcom/sponsorpay/publisher/interstitial/e;

.field private c:Lcom/sponsorpay/publisher/interstitial/g;

.field private d:Landroid/app/Activity;

.field private e:Ljava/lang/String;

.field private f:Lcom/sponsorpay/a/a;

.field private g:Lcom/sponsorpay/publisher/interstitial/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/c;

    invoke-direct {v0}, Lcom/sponsorpay/publisher/interstitial/c;-><init>()V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/c;->a:Lcom/sponsorpay/publisher/interstitial/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/e;->a:Lcom/sponsorpay/publisher/interstitial/e;

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/c;->b:Lcom/sponsorpay/publisher/interstitial/e;

    .line 63
    return-void
.end method

.method private a(Lcom/sponsorpay/publisher/interstitial/e;)V
    .locals 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/c;->b:Lcom/sponsorpay/publisher/interstitial/e;

    .line 139
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/d;->a:[I

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/c;->b:Lcom/sponsorpay/publisher/interstitial/e;

    invoke-virtual {v1}, Lcom/sponsorpay/publisher/interstitial/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 141
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/c;->d:Landroid/app/Activity;

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/sponsorpay/publisher/interstitial/b;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/c;->g:Lcom/sponsorpay/publisher/interstitial/b;

    .line 282
    return-void
.end method

.method public a(Lcom/sponsorpay/publisher/interstitial/g;Lcom/sponsorpay/publisher/interstitial/f;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/c;->f:Lcom/sponsorpay/a/a;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/c;->e:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/sponsorpay/publisher/interstitial/h;->a(Lcom/sponsorpay/a/a;Ljava/lang/String;Lcom/sponsorpay/publisher/interstitial/g;Lcom/sponsorpay/publisher/interstitial/f;)V

    .line 241
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/d;->b:[I

    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 243
    :pswitch_0
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/e;->a:Lcom/sponsorpay/publisher/interstitial/e;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/c;->a(Lcom/sponsorpay/publisher/interstitial/e;)V

    .line 244
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/c;->g:Lcom/sponsorpay/publisher/interstitial/b;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/c;->g:Lcom/sponsorpay/publisher/interstitial/b;

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/a;->b:Lcom/sponsorpay/publisher/interstitial/a;

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/interstitial/b;->a(Lcom/sponsorpay/publisher/interstitial/a;)V

    goto :goto_0

    .line 249
    :pswitch_1
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/e;->a:Lcom/sponsorpay/publisher/interstitial/e;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/c;->a(Lcom/sponsorpay/publisher/interstitial/e;)V

    .line 250
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/c;->g:Lcom/sponsorpay/publisher/interstitial/b;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/c;->g:Lcom/sponsorpay/publisher/interstitial/b;

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/a;->c:Lcom/sponsorpay/publisher/interstitial/a;

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/interstitial/b;->a(Lcom/sponsorpay/publisher/interstitial/a;)V

    goto :goto_0

    .line 255
    :pswitch_2
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/e;->a:Lcom/sponsorpay/publisher/interstitial/e;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/c;->a(Lcom/sponsorpay/publisher/interstitial/e;)V

    .line 257
    :pswitch_3
    const-string/jumbo v0, "SPInterstitialClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "An error occurred. Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/c;->g:Lcom/sponsorpay/publisher/interstitial/b;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/c;->g:Lcom/sponsorpay/publisher/interstitial/b;

    invoke-interface {v0, p3}, Lcom/sponsorpay/publisher/interstitial/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/c;->b:Lcom/sponsorpay/publisher/interstitial/e;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/interstitial/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/c;->c:Lcom/sponsorpay/publisher/interstitial/g;

    invoke-virtual {v0, p1, v1}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->showInterstitial(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/g;)Z

    move-result v0

    .line 205
    if-eqz v0, :cond_1

    .line 206
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/c;->g:Lcom/sponsorpay/publisher/interstitial/b;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/c;->g:Lcom/sponsorpay/publisher/interstitial/b;

    invoke-interface {v1}, Lcom/sponsorpay/publisher/interstitial/b;->a()V

    .line 209
    :cond_0
    sget-object v1, Lcom/sponsorpay/publisher/interstitial/e;->e:Lcom/sponsorpay/publisher/interstitial/e;

    invoke-direct {p0, v1}, Lcom/sponsorpay/publisher/interstitial/c;->a(Lcom/sponsorpay/publisher/interstitial/e;)V

    .line 213
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
