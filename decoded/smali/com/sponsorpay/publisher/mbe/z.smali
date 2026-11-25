.class public final Lcom/sponsorpay/publisher/mbe/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/c;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/sponsorpay/a/a;

.field private c:Lcom/sponsorpay/publisher/mbe/f;

.field private d:Lcom/sponsorpay/publisher/mbe/b;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/a/a;Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/b;Lcom/sponsorpay/publisher/mbe/f;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/z;->b:Lcom/sponsorpay/a/a;

    .line 35
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/z;->a:Landroid/app/Activity;

    .line 36
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/z;->d:Lcom/sponsorpay/publisher/mbe/b;

    .line 37
    iput-object p4, p0, Lcom/sponsorpay/publisher/mbe/z;->c:Lcom/sponsorpay/publisher/mbe/f;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/z;->d:Lcom/sponsorpay/publisher/mbe/b;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/publisher/mbe/c;)Z

    .line 42
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/z;->d:Lcom/sponsorpay/publisher/mbe/b;

    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/z;->b:Lcom/sponsorpay/a/a;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/z;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/a/a;Landroid/app/Activity;)Z

    .line 43
    return-void
.end method

.method public final a(Lcom/sponsorpay/publisher/mbe/d;)V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/sponsorpay/publisher/mbe/d;->e:Lcom/sponsorpay/publisher/mbe/d;

    if-ne p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/z;->c:Lcom/sponsorpay/publisher/mbe/f;

    const-string/jumbo v1, "An error happened while trying to get offers from mBE"

    invoke-interface {v0, v1}, Lcom/sponsorpay/publisher/mbe/f;->onSPBrandEngageError(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/z;->c:Lcom/sponsorpay/publisher/mbe/f;

    .line 1046
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/z;->d:Lcom/sponsorpay/publisher/mbe/b;

    invoke-virtual {v0}, Lcom/sponsorpay/publisher/mbe/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/z;->a:Landroid/app/Activity;

    const-class v3, Lcom/sponsorpay/publisher/mbe/SPBrandEngageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    :goto_0
    invoke-interface {v1, v0}, Lcom/sponsorpay/publisher/mbe/f;->onSPBrandEngageOffersAvailable(Landroid/content/Intent;)V

    .line 61
    :goto_1
    return-void

    .line 1050
    :cond_0
    const-string/jumbo v0, "SPBrandEngageRequest"

    const-string/jumbo v2, "Undefined error"

    invoke-static {v0, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/z;->c:Lcom/sponsorpay/publisher/mbe/f;

    invoke-interface {v0}, Lcom/sponsorpay/publisher/mbe/f;->onSPBrandEngageOffersNotAvailable()V

    goto :goto_1
.end method
