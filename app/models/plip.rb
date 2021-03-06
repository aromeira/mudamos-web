class Plip
  extend Forwardable

  def_delegators :detail, :published_version, :presentation, :signatures_required, :call_to_action, :video_id
  def_delegators :published_version, :id, :document_url
  def_delegators :phase, :cycle

  # @!attribute [rw] detail
  #   @return [PetitionPlugin::Detail]
  attr_accessor :detail

  # @!attribute [rw] phase
  #   @return [Phase]
  attr_accessor :phase

  # @!attribute [rw] plip_url
  #   @return [String]
  attr_accessor :plip_url

  def initialize(detail:, phase:, plip_url:)
    @detail = detail
    @phase = phase
    @plip_url = plip_url
  end

  def content
    published_version.body
  end
end
