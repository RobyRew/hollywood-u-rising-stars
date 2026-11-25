.class final Lcom/leanplum/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leanplum/bk;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p2, p0, Lcom/leanplum/bl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/leanplum/bm;

    invoke-direct {v0, p0}, Lcom/leanplum/bm;-><init>(Lcom/leanplum/bl;)V

    invoke-static {v0}, Lcom/leanplum/LeanplumActivityHelper;->queueActionUponActive(Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    .line 143
    return-void
.end method
