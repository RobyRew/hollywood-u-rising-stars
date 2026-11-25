.class public final Lcom/sponsorpay/advertiser/d;
.super Lcom/sponsorpay/advertiser/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sponsorpay/a/a;Lcom/sponsorpay/advertiser/c;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sponsorpay/advertiser/a;-><init>(Lcom/sponsorpay/a/a;Lcom/sponsorpay/advertiser/c;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "installs"

    invoke-static {v0}, Lcom/sponsorpay/c/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sponsorpay/advertiser/d;->a:Lcom/sponsorpay/advertiser/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sponsorpay/advertiser/c;->a(Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method protected final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sponsorpay/advertiser/d;->a:Lcom/sponsorpay/advertiser/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sponsorpay/advertiser/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
