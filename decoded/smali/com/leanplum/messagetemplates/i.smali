.class final Lcom/leanplum/messagetemplates/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/leanplum/messagetemplates/BaseMessageDialog;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/BaseMessageDialog;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/leanplum/messagetemplates/i;->a:Lcom/leanplum/messagetemplates/BaseMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/leanplum/messagetemplates/i;->a:Lcom/leanplum/messagetemplates/BaseMessageDialog;

    invoke-static {v0}, Lcom/leanplum/messagetemplates/BaseMessageDialog;->b(Lcom/leanplum/messagetemplates/BaseMessageDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/leanplum/messagetemplates/i;->a:Lcom/leanplum/messagetemplates/BaseMessageDialog;

    iget-object v0, v0, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a:Lcom/leanplum/messagetemplates/a;

    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/a;->accept()V

    .line 336
    iget-object v0, p0, Lcom/leanplum/messagetemplates/i;->a:Lcom/leanplum/messagetemplates/BaseMessageDialog;

    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/BaseMessageDialog;->cancel()V

    .line 338
    :cond_0
    return-void
.end method
