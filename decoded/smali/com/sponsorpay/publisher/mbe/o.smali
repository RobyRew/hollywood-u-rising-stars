.class final Lcom/sponsorpay/publisher/mbe/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sponsorpay/publisher/mbe/b;


# direct methods
.method constructor <init>(Lcom/sponsorpay/publisher/mbe/b;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/o;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/o;->a:Lcom/sponsorpay/publisher/mbe/b;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/d;->e:Lcom/sponsorpay/publisher/mbe/d;

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/publisher/mbe/b;Lcom/sponsorpay/publisher/mbe/d;)V

    .line 656
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/o;->a:Lcom/sponsorpay/publisher/mbe/b;

    invoke-static {v0}, Lcom/sponsorpay/publisher/mbe/b;->l(Lcom/sponsorpay/publisher/mbe/b;)V

    .line 657
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/o;->a:Lcom/sponsorpay/publisher/mbe/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sponsorpay/publisher/mbe/b;->a(Lcom/sponsorpay/publisher/mbe/b;Z)Z

    .line 658
    return-void
.end method
