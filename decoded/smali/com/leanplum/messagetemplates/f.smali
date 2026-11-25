.class final Lcom/leanplum/messagetemplates/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/leanplum/messagetemplates/e;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/e;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/leanplum/messagetemplates/f;->a:Lcom/leanplum/messagetemplates/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/leanplum/messagetemplates/f;->a:Lcom/leanplum/messagetemplates/e;

    iget-object v0, v0, Lcom/leanplum/messagetemplates/e;->a:Lcom/leanplum/messagetemplates/BaseMessageDialog;

    invoke-static {v0}, Lcom/leanplum/messagetemplates/BaseMessageDialog;->a(Lcom/leanplum/messagetemplates/BaseMessageDialog;)V

    .line 114
    return-void
.end method
