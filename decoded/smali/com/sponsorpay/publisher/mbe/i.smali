.class final Lcom/sponsorpay/publisher/mbe/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/h;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/h;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/i;->a:Lcom/sponsorpay/publisher/mbe/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/i;->a:Lcom/sponsorpay/publisher/mbe/h;

    iget-object v0, v0, Lcom/sponsorpay/publisher/mbe/h;->a:Lcom/sponsorpay/publisher/mbe/b;

    sget-object v1, Lcom/sponsorpay/publisher/b;->n:Lcom/sponsorpay/publisher/b;

    invoke-static {v1}, Lcom/sponsorpay/publisher/a;->a(Lcom/sponsorpay/publisher/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/publisher/mbe/b;Ljava/lang/String;)V

    .line 205
    return-void
.end method
