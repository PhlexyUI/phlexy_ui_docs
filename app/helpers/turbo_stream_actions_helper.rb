module TurboStreamActionsHelper
  def set_dataset_attribute(targets, attribute, value)
    turbo_stream_action_tag(:set_dataset_attribute, targets:, attribute:, value:)
  end
end

Turbo::Streams::TagBuilder.prepend(TurboStreamActionsHelper)
