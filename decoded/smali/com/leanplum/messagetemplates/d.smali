.class final Lcom/leanplum/messagetemplates/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/leanplum/messagetemplates/c;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/c;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/leanplum/messagetemplates/d;->a:Lcom/leanplum/messagetemplates/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/leanplum/messagetemplates/d;->a:Lcom/leanplum/messagetemplates/c;

    iget-object v0, v0, Lcom/leanplum/messagetemplates/c;->a:Lcom/leanplum/ActionContext;

    const-string/jumbo v1, "Dismiss action"

    invoke-virtual {v0, v1}, Lcom/leanplum/ActionContext;->runActionNamed(Ljava/lang/String;)V

    .line 52
    return-void
.end method
