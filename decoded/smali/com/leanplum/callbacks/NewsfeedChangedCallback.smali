.class public abstract Lcom/leanplum/callbacks/NewsfeedChangedCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract newsfeedChanged()V
.end method

.method public run()V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/leanplum/callbacks/NewsfeedChangedCallback;->newsfeedChanged()V

    .line 13
    return-void
.end method
