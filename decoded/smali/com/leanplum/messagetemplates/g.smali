.class final Lcom/leanplum/messagetemplates/g;
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
    .line 136
    iput-object p1, p0, Lcom/leanplum/messagetemplates/g;->a:Lcom/leanplum/messagetemplates/BaseMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/leanplum/messagetemplates/g;->a:Lcom/leanplum/messagetemplates/BaseMessageDialog;

    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/BaseMessageDialog;->cancel()V

    .line 140
    return-void
.end method
