.class final Lcom/leanplum/messagetemplates/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/leanplum/messagetemplates/n;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/n;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/leanplum/messagetemplates/p;->a:Lcom/leanplum/messagetemplates/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/leanplum/messagetemplates/p;->a:Lcom/leanplum/messagetemplates/n;

    iget-object v0, v0, Lcom/leanplum/messagetemplates/n;->a:Lcom/leanplum/ActionContext;

    const-string/jumbo v1, "Accept action"

    invoke-virtual {v0, v1}, Lcom/leanplum/ActionContext;->runTrackedActionNamed(Ljava/lang/String;)V

    .line 54
    return-void
.end method
