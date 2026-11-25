.class final Lcom/sponsorpay/c/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sponsorpay/c/g;


# direct methods
.method constructor <init>(Lcom/sponsorpay/c/g;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sponsorpay/c/y;->a:Lcom/sponsorpay/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 191
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 192
    iget-object v0, p0, Lcom/sponsorpay/c/y;->a:Lcom/sponsorpay/c/g;

    invoke-virtual {v0}, Lcom/sponsorpay/c/g;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sponsorpay/c/y;->a:Lcom/sponsorpay/c/g;

    invoke-virtual {v0}, Lcom/sponsorpay/c/g;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 195
    :cond_0
    return-void
.end method
