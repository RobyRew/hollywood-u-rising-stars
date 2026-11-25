.class final Lcom/sponsorpay/publisher/mbe/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sponsorpay/publisher/mbe/player/f;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/q;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/q;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/s;->a:Lcom/sponsorpay/publisher/mbe/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 753
    const-string/jumbo v0, "SPBrandEngageClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "nativeVideoPlayerEventOccurred() called with URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/s;->a:Lcom/sponsorpay/publisher/mbe/q;

    iget-object v0, v0, Lcom/sponsorpay/publisher/mbe/q;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0, p1}, Lcom/sponsorpay/publisher/mbe/b;->c(Lcom/sponsorpay/publisher/mbe/b;Ljava/lang/String;)V

    .line 755
    return-void
.end method
