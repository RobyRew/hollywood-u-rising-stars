.class final Lcom/sponsorpay/publisher/mbe/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/u;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/u;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/x;->a:Lcom/sponsorpay/publisher/mbe/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/x;->a:Lcom/sponsorpay/publisher/mbe/u;

    iget-object v0, v0, Lcom/sponsorpay/publisher/mbe/u;->a:Lcom/sponsorpay/publisher/mbe/b;

    const-string/jumbo v1, "CLOSE_ABORTED"

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/b;->b(Lcom/sponsorpay/publisher/mbe/b;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/x;->a:Lcom/sponsorpay/publisher/mbe/u;

    iget-object v0, v0, Lcom/sponsorpay/publisher/mbe/u;->a:Lcom/sponsorpay/publisher/mbe/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/publisher/mbe/b;Z)Z

    .line 881
    return-void
.end method
