.class final Lcom/sponsorpay/publisher/mbe/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/mediation/c;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/q;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/q;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/t;->a:Lcom/sponsorpay/publisher/mbe/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/sponsorpay/publisher/mbe/mediation/d;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/publisher/mbe/mediation/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/d;->a:Lcom/sponsorpay/publisher/mbe/mediation/d;

    if-ne p3, v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/t;->a:Lcom/sponsorpay/publisher/mbe/q;

    iget-object v0, v0, Lcom/sponsorpay/publisher/mbe/q;->a:Lcom/sponsorpay/publisher/mbe/b;

    const-string/jumbo v1, "STARTED"

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/b;->b(Lcom/sponsorpay/publisher/mbe/b;Ljava/lang/String;)V

    .line 781
    :cond_0
    const-string/jumbo v0, "%s(\'play\', {tpn:\'%s\', id:%s, result:\'%s\', adapter_version:\'%s\'})"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "javascript:Sponsorpay.MBE.SDKInterface.notify"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "id"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 783
    const-string/jumbo v1, "SPBrandEngageClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Notifying - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v1, p0, Lcom/sponsorpay/publisher/mbe/t;->a:Lcom/sponsorpay/publisher/mbe/q;

    iget-object v1, v1, Lcom/sponsorpay/publisher/mbe/q;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v1, v0}, Lcom/sponsorpay/publisher/mbe/b;->c(Lcom/sponsorpay/publisher/mbe/b;Ljava/lang/String;)V

    .line 785
    return-void
.end method
